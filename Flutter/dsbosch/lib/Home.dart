import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app),)
        ],
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
      ),

      bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),

        child: Padding(
          padding: EdgeInsets.all(5),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 25,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.bookmark, size: 25,)),
              SizedBox(width: 15,),
              IconButton(onPressed: ()=> Navigator.pushNamed(context, '/cadastro'), icon: Icon(Icons.group_add, size: 25,)),
              IconButton(onPressed: ()=> Navigator.pushNamed(context, '/lista'),
              icon: Icon(Icons.people_alt_rounded, size: 25,)),
            ],
          ),
        ),
      ),
    );
  }
}
