//import 'dart:html';
import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';

/*class UserModel{
  final int id;
  final String name;
  final String Phone;

  UserModel({
   @required this.id = 1,
   @required this.name ='2',
   @required this.Phone ='22',
});
}*/

class UsersScreen extends StatelessWidget {
  //const MessangerScreen({Key? key}) : super(key: key);
  List<UserModel> users = [
    UserModel(id: 1, name: 'Mina', Phone: '01208992485'),
    UserModel(id: 2, name: 'Ibram', Phone: '01308992485'),
    UserModel(id: 3, name: 'Karim', Phone: '01408992485'),
    UserModel(id: 4, name: 'Salah', Phone: '01508992485'),
    UserModel(id: 1, name: 'Mina', Phone: '01208992485'),
    UserModel(id: 2, name: 'Ibram', Phone: '01308992485'),
    UserModel(id: 3, name: 'Karim', Phone: '01408992485'),
    UserModel(id: 4, name: 'Salah', Phone: '01508992485'),
    UserModel(id: 1, name: 'Mina', Phone: '01208992485'),
    UserModel(id: 2, name: 'Ibram', Phone: '01308992485'),
    UserModel(id: 3, name: 'Karim', Phone: '01408992485'),
    UserModel(id: 4, name: 'Salah', Phone: '01508992485'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ) ,
          itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 20.0,),
        Column(
          mainAxisSize: MainAxisSize.min, //طول ال column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.Phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
  //Build item
  //Build list
  //add item to list
}
