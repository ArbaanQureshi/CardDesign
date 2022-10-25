import 'package:design/Api.dart';
import 'package:design/model.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class MyAPPUU extends StatefulWidget {
  const MyAPPUU({Key key}) : super(key: key);

  @override
  State<MyAPPUU> createState() => _MyAPPUUState();
}

class _MyAPPUUState extends State<MyAPPUU> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: Text('hwllo'),
      )
    );
  }
}
// SingleChildScrollView(
// child: Container(
// color: Colors.redAccent,
// child: FutureBuilder<List<FutureModel>>(
// future: getPosts() ,
// builder: (context, snapshot) {
// if(snapshot.data==null){
// return Container(
// child:Center(
// child:  Text('Loading'),
// ) ,
// );
// }else{
// return ListView.builder(
// itemCount: snapshot.data.length,
// itemBuilder: (context, index) {
// return ListTile(
// title: Text(snapshot.data[index].title),
// );
// },
// );
// }
// },
// ),
// ),
// ),