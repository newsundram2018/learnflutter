import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    ),
  );
}

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
            child: Card(
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
            ),
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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Sundram"),
              accountEmail: Text("Samjio2016@gmil.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars0.githubusercontent.com/u/39513887?s=460&u=cc35e83e6eebd05a18ccbf3c0ec15b27322b07f7&v=4"),
              ),
              //arrowColor: Colors.amber,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text("Sundram Mishra"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.email,
              ),
              title: Text("Email"),
              subtitle: Text("samjio2016@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
