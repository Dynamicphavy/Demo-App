import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("1st Page")
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFF6F8FB),
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Just A Demo'),
      ),
    );
  }
}