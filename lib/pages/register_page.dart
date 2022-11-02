import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:touristapp/models/user.dart';
import 'package:touristapp/pages/login_page.dart';
import 'package:touristapp/repository/firebase_api.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key : key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Genre {male, female, other}

class _RegisterPageState extends State<RegisterPage> {

  final FirebaseApi _firebaseApi = FirebaseApi();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();

  String _data = "information:";

  Genre? _genre = Genre.male;

  String buttonMsg = "Birthdate";

  String _date = "";

  String _dateConverter(DateTime newDate){
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String dateFormatted = formatter.format(newDate);
    return dateFormatted;
  }

  void _showSelectDate() async{
    final DateTime? newDate = await showDatePicker(
      context: context,
      locale: const Locale("en", "US"),
      initialDate: DateTime(2022, 10),
      firstDate: DateTime(1900, 1),
      lastDate: DateTime(2022, 12),
      helpText: "Birthdate",
    );
    if (newDate != null){
      setState(() {
        _date = _dateConverter(newDate);
        buttonMsg = "Birthday: ${_date.toString()}";

      });
    }
  }

  void _showMsg(String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(content: Text(msg),
          action: SnackBarAction(
              label: 'Accept', onPressed: scaffold.hideCurrentSnackBar),
        )
    );
  }

  void _saveUser(User user) async {
    var result = await _firebaseApi.createUser(user);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _registerUser(User user) async {
    //SharedPreferences prefs = await SharedPreferences.getInstance(); COMENTADO MANUAL
    //prefs.setString("user", jsonEncode(user)); COMENTADO MANUAL
    var result1 = await _firebaseApi.registerUser(user.email, user.password);
    String msg = "";
    if (result1 == "invalid-email"){
      msg = "Misspelled Email";
      _showMsg(msg);
    } else
    if(result1 == "weak-password"){
      msg = "Password with no 6 or more characters";
      _showMsg(msg);
    } else
    if(result1 == "email-already-in-use"){
      msg = "Email already in use";
      _showMsg(msg);
    } else
    if(result1 == "network-request-failed"){
      msg = "Check your internet connection";
      _showMsg(msg);
    } else {
      msg = "Successful Registration";
      user.uid = result1;
      _saveUser(user);
      _showMsg(msg);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  void _onRegisterButtonClicked(){
    setState(() {
      if(_password.text == _repPassword.text) {
        String genre = "male";

        if (_genre == Genre.female) {
          genre = "female";
        }

        if (_genre == Genre.other) {
          genre = "other";
        }

        var user = User("", _name.text, _email.text, _password.text, genre, _date);
        _registerUser(user);
        //_showMsg("Successful Registration");
        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));

      } else {
        _showMsg("Passwords must be same");
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Image(image: AssetImage('assets/images/logo.png'), width: 256),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    controller: _name,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Name'),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    controller: _repPassword,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Repeat Password'),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    'Genre',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('M'),
                          leading: Radio<Genre>(
                              value: Genre.male,
                              groupValue: _genre,
                              onChanged: (Genre? value) {
                                setState(() {
                                  _genre = value;
                                });
                              }),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('F'),
                          leading: Radio<Genre>(
                              value: Genre.female,
                              groupValue: _genre,
                              onChanged: (Genre? value) {
                                setState(() {
                                  _genre = value;
                                });
                              }),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('O'),
                          leading: Radio<Genre>(
                              value: Genre.other,
                              groupValue: _genre,
                              onChanged: (Genre? value) {
                                setState(() {
                                  _genre = value;
                                });
                              }),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      // backgroundColor: Colors.purpleAccent
                    ),
                    onPressed: (){
                      _showSelectDate();
                    },
                    child: Text(buttonMsg),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      //backgroundColor: Colors.purpleAccent
                    ),
                    onPressed: (){
                      _onRegisterButtonClicked();
                    },
                    child: const Text("Register"),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}