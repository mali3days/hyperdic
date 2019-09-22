import 'dart:async';
// import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<dynamic> fetchDictionary() async  {
      return await http
        // .get('https://dictionary.yandex.net/api/v1/dicservice.json/lookup?key=dict.1.1.20190711T182803Z.dc725ff7778191e9.5248088922a0c62d872150e617b4834ec3082da7&lang=en-ru&text=fox')
        .get('https://dictionary.yandex.net/api/v1/dicservice.json/lookup?key=dict.1.1.20190711T182803Z.dc725ff7778191e9.5248088922a0c62d872150e617b4834ec3082da7&lang=en-ru&text=transfer')
        // .then((res) => json.decode(res.body));
        .then((res) => jsonDecode(res.body));

    // print("********************");
    // print(response);
    // if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return Post.fromJson(json.decode(response.body));
      // return json.decode(response.body);
      // return response;
    // } else {
    //   // If that call was not successful, throw an error.
    //   throw Exception('Failed to load post');
    // }
}

// fetch(`https://dictionary.yandex.net/api/v1/dicservice.json/lookup?key=dict.1.1.20190711T182803Z.dc725ff7778191e9.5248088922a0c62d872150e617b4834ec3082da7
// &lang=en-ru&text=transfer`)
// .then(res => res.json())
// .then(res => console.log(res))
// .catch(err => console.log(err))