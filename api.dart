import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Post {
  final String username;
  final String email;

  Post({ this.username, this.email});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(

      username: json['username'],
      email: json['email'],
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = username;
    map["email"] = email;

    return map;
  }
}

Future<Post> createPost(String url, {Map body}) async {
  String username = 'shems';
  String password = 'Jemal@12';
  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$username:$password'));
  print(basicAuth);


  return http.post(url, headers: <String, String>{'authorization': basicAuth},body: body).then((http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error while fetching data");
    }
    return Post.fromJson(json.decode(response.body));
  });
}

class MyApp extends StatelessWidget {
  final Future<Post> post;

  MyApp({Key key, this.post}) : super(key: key);
  static final CREATE_POST_URL = "http://10.240.73.22:8000/users/";
  TextEditingController usernameControler = new TextEditingController();
  TextEditingController emailControler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "WEB SERVICE",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Create user'),
          ),
          body: new Container(
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: usernameControler,
                  decoration: InputDecoration(
                      hintText: "username....", labelText: 'username'),
                ),
                new TextField(
                  controller: emailControler,
                  decoration: InputDecoration(
                      hintText: "email....", labelText: 'email'),
                ),
                new RaisedButton(
                  onPressed: () async {
                    Post newPost = new Post(
                        username: usernameControler.text, email: emailControler.text);
                    Post p = await createPost(CREATE_POST_URL,
                        body: newPost.toMap());
                    print(p.username);
                  },
                  child: const Text("Create"),
                )
              ],
            ),
          )),
    );
  }
}

void main() => runApp(MyApp());