import 'package:flutter/material.dart';

import '../drawer.dart';
import '../name_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myname = "My name IS Sundram";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child:
                NameCardWidget(myname: myname, nameController: _nameController),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myname = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      drawer: MyDrawer(),
    );
  }
}
