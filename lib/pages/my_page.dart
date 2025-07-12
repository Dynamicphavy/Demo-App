import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  // Variable
  int _counter = 0;

  // Method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1st Page"),),
        drawer: Drawer(
          backgroundColor: Colors.blueGrey,
          child: Column(
            children: [
              const DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48,
                )
              ),

              // Home page list tile
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("H O M E"),
                onTap: () {
                  // pop drawer first
                  Navigator.pop(context);
                  
                  // go to the home page
                  Navigator.pushNamed(context, '/homepage');
                },
              ),

              // setting page list tile
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("S E T T I N G S"),
                onTap: () {
                  // go to the settings page
                  Navigator.pushNamed(context, '/settings');
                },
              )
            ],
          ),
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello World"),
          
              Text("You Push This Button Many Times!"),
          
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 40),
              ),
          
              ElevatedButton(onPressed: _incrementCounter, child: Text("Increment"),)
            ],
          ),
        ),
    );
  }
}
