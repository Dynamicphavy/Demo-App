import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, 
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            }, 
            icon: Icon(
              Icons.info_outline
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein.jpg'),
            SizedBox(height: 10,),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                debugPrint('This is an Elevated Button');
              }, 
              child: Text('Elevated Button')
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green,
              ),
              onPressed: () {
                debugPrint('This is an Outlined Button');
              }, 
              child: Text('Outlined Button')
            ),
            TextButton(
              onPressed: () {
                debugPrint('This is an Text Button');
              }, 
              child: Text('Text Button')
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is a Row Widget');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch, 
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              }
            ),
            Checkbox(
              value: isCheckbox, 
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              }
            ),
            Image.network('https://ids.si.edu/ids/deliveryService?id=NPG-NPG_77_164&max_w=550')
          ],
        ),
      ),
    );
  }
}