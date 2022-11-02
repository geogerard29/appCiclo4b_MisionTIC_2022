import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:touristapp/pages/Home_page.dart';
import 'package:touristapp/models/site.dart';
import 'package:touristapp/pages/login_page.dart';

class PoiDetailsPage extends StatefulWidget {
  late QueryDocumentSnapshot capturingDatas;

  PoiDetailsPage(this.capturingDatas,{super.key});


  @override
  State<PoiDetailsPage> createState() => _PoiDetailsPageState();
}

enum Menu{logOut}

class _PoiDetailsPageState extends State<PoiDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist Sites"),
        backgroundColor: Colors.purpleAccent,
        actions: [
          PopupMenuButton(
            onSelected: (Menu item){
              setState(() {
                if (item == Menu.logOut){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                }
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
              const PopupMenuItem(
                value: Menu.logOut,
                child: Text('Sign out'),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Center (
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget> [
                    Text(
                      widget.capturingDatas['nameSite'],
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.redAccent
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Image(image: AssetImage(widget.capturingDatas['photo']),width: 250,),
                    const SizedBox(height: 16.0,),
                    Row(
                      children:<Widget> [
                        const Text(
                          'TOWN: ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange
                          ),
                        ),
                        Text(
                          widget.capturingDatas['town'],
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.purple
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0,),
                    Row(
                      children:<Widget> [
                        const Text(
                          'DEPARTMENT : ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange
                          ),
                        ),
                        Text(
                          widget.capturingDatas['department'],
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.purple
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0,),
                    Row(
                      children:  const <Widget> [
                        Text(
                          'DESCRIPTION: ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange
                          ),
                        ),
                        Text(
                          'Esto es texto apoyo',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.capturingDatas['detailedDescription'],
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.purple
                      ),
                    ),
                    const SizedBox(height: 16.0,),
                    Row(
                      children:  const <Widget> [
                        Text(
                          'MORE INFORMATION: ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange
                          ),
                        ),
                        Text(
                          'texto apoyo',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.capturingDatas['moreInformation'],
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.purple
                      ),
                    ),
                  ],
                )
            ),
          )
      ),
    );
  }
}