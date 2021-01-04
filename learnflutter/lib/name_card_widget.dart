import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.myname,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myname;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/bg1.jpeg",
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            myname,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter Sum Text",
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ))
        ],
      ),
    );
  }
}
