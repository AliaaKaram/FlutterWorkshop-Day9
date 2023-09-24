// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// import 'Movie.dart';
//
//
// // const axios = require('axios');
// //
// // const options = {
// //   method: 'GET',
// //   url: 'https://imdb-top-100-movies.p.rapidapi.com/',
// //   headers: {
// //     'X-RapidAPI-Key': '8577704adcmsh15c7c303c9ad43fp17c0e4jsna4e86035b2c5',
// //     'X-RapidAPI-Host': 'imdb-top-100-movies.p.rapidapi.com'
// //   }
// // };
// //
// // try {
// // const response = await axios.request(options);
// // console.log(response.data);
// // } catch (error) {
// // console.error(error);
// // }
// class RecipeApi {
//   static Future<List<Movie>> getMovie() async {
//
//     var uri = Uri.https('imdb-top-100-movies.p.rapidapi.com/', '/feeds/list',
//         {"limit": "18", "start": "0", "tag": "list.recipe.popular"});
//
//     final response = await http.get(uri, headers: {
//       "x-rapidapi-key": "YOUR API KEY FROM YUMMLY API",
//       "x-rapidapi-host": "yummly2.p.rapidapi.com",
//       "useQueryString": "true"
//     });
//
//     Map data = jsonDecode(response.body);
//     List _temp = [];
//
//     for (var i in data['feed']) {
//       _temp.add(i['content']['details']);
//     }
//
//     return Movie.recipesFromSnapshot(_temp);
//   }
// }