import 'package:awesome_app/drawer.dart';
import 'package:awesome_app/pages/login_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = "Change my Name";
  // underscore "_" mean the attribute is private "_nameController"
  // in dart we don't need to use new keyword " = new TextEditingController();"
  // TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  // called before build, before building the widget
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  // called after widget build, similitar to return in react
  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs?.setBool("loggedIn", false);
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          ),
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
          : Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
