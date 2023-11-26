import 'package:first_project/modules/todo%20app%20body%20screens/Archived_tasks.dart';
import 'package:first_project/modules/todo%20app%20body%20screens/done_tasks.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../modules/todo app body screens/new_tasks.dart';

class HomeLayout extends StatefulWidget {

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens=[
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  //late Database database;
 /* @override  //1. create
  void initState() {
    super.initState();
    createDatabase();
  }*/
  //var scaffoldKey = GlobalKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text (titles[currentIndex],
        style: const TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,

      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.blue,
        onPressed: () async
        {
         /* try
          {
            var name = await getName();
            print(name);
            print('Mina2'); //here Mina2 could be printed before Mina Saied
            throw('some error !!!!');
          } catch(error)
          {
            print('error ${error.toString()}');
          }*//*
          getName().then((value) {
            print(value);
            print('Mina2');
            throw('test error !!!');
          }).catchError((error){
            print('error is ${error.toString()}');
          });*/
          //insertToDatabase();
        },
        child: const Icon(
          Icons.add,
        color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:  Colors.blue,
        type: BottomNavigationBarType.fixed,
        /*backgroundColor: Colors.red,
        elevation: 15.0,*/
        currentIndex: currentIndex, //it selects first item in my BottomNavigationBar
        onTap: (index)
        {
          setState(() {
            currentIndex = index;
          });
        },
        items:
        [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archived',
          ),
        ],
      ),
    );
  }
  Future<String> getName() async
  {
    return'Mina Saied';
  }

  /*void createDatabase() async // 1.create
  {
    var database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database,version)
      {
        // id integer
        // title String
        // date String
        // time String
        // status String
        print('database created');
        database.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY, '
            'title TEXT, date TEXT, time TEXT, status TEXT )').then((value)
        {
          print('table created');
        }).catchError((error){
          print('Error when Creating Table ${error.toString()}');
        });
      },
      onOpen: (database)
      {
        print('database opened');
      },
    );
    database.close();
  }*/
  /*void insertToDatabase() async{    //2.insert
     await database.transaction((txn)async {
      txn.rawInsert('INSERT INTO tasks'
          '(title, date, time, status) '
          'VALUES ("first task","25/10/2023","1400","new")').then((value) {
            print('$value inserted successfully ');
      }).catchError((error) {
        print('Error when Inserting New Record ${error.toString()}');
      });


    });
  }*/

}
