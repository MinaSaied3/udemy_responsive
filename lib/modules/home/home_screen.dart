//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('First App'),
        actions: [
          IconButton(
            onPressed: () {
              print('Notification clicked');
            },
            icon: Icon(
              Icons.notification_important,
            ),
          ),
          Icon(
            Icons.search,
          ),
        ],
        centerTitle: true,
        elevation: 10.0, //makes a small shadow
      ),
      body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                width: 200.0,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(20.0,),
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0,),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child:
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image:
                      NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flower_February_2008-1.jpg/1280px-Flower_February_2008-1.jpg',
                      ),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                      //     EdgeInsetsDirectional.only(
                      //   top: 10.0,
                      //   bottom: 10.0,
                      // ),
                      child:
                      Text(
                        'Mina',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
