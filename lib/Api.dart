import 'package:dio/dio.dart';
import 'dart:developer';

import 'model.dart';



  Future<List<FutureModel>> getPosts() async{
    try{
      final Url='https://jsonplaceholder.typicode.com/posts';
      Response response;
      var dio = Dio();
      response = await dio.get(Url);
      if(response.statusCode==200){
        var json=response.data;
        var jsondata= List<FutureModel>.from(json.map((e)=>FutureModel.fromJson(e)));
          return jsondata;
      }
    }catch(e){
      rethrow;
    }
  }
