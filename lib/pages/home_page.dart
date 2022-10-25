import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("My Sites"),
          backgroundColor: Colors.purpleAccent
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center (
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget> [
                const Text(
                  "Morgan's cave",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.redAccent
                  ),
                ),
                const SizedBox(height: 20.0,),
                const Image(image: AssetImage('assets/images/morgan_cave2.jpg'),width: 310,),
                const SizedBox(height: 16.0,),
                const SizedBox(height: 16.0,),
                Row(
                  children:  const <Widget> [
                    Text(
                      'TOWN: ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange
                      ),
                    ),
                    Text(
                      'San Andres Island.',
                      style: TextStyle(
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
                      'DEPARMENT: ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange
                      ),
                    ),
                    Text(
                      'San Andres Archipelago.',
                      style: TextStyle(
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
                const Text(
                  "According to the legend it's the place where pirates"
                      " hidden the treasures. Natives say it is made of some labyrinths"
                      " that end in a unique and incomparable beach.",
                  style: TextStyle(
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
                const Text(
                  "The tour begins with the Coconut Museum; after"
                      " you should visit the Pirate Museum; later move onto"
                      " the native art gallery and finally the cave.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
