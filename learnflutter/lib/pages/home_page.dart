import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../drawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myname = "My name IS Sundram";
  TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";

  var data;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    print(res.body);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: data != null
          ? Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network("${data[index]["url"]}"),
                  );
                },
              ),
            )
          : Center(child: CircularProgressIndicator()),
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
