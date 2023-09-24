import 'package:bottom_navigation_bar/Screens/ProductDescriptionScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Movies App"),
        ),
      ),
      body: ListView.separated(
          itemCount: 5,
          itemBuilder:(context, index) {
          return CardItem(MovieImageURL: "MovieImageURL",
          MovieTitle: "MovieTitle",
    MovieDate: "MovieDate", MovieRate: "MovieRate");
          }, separatorBuilder: (BuildContext context, int index) {
            return Column(children: [
              Container(height: 3,),
              SizedBox(height: 10,)
            ],);
      },
    ),
    );
  }
}

class CardItem extends StatelessWidget {
  String MovieImageURL;
  String MovieTitle;
  String MovieDate;
  String MovieRate;

  CardItem(
      {Key? key,
      required this.MovieImageURL,
      required this.MovieTitle,
      required this.MovieDate,
      required this.MovieRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 20,
        child: Container(
          height: 100,
          color: Colors.white,
          child: Center(
            child: ListTile(
                leading: Container(color: Colors.tealAccent, width: 60, height: 60,),
                title: Text(
                  MovieTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      MovieRate,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      MovieDate,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );


  }
}

