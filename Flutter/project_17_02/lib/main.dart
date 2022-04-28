import 'package:flutter/material.dart';

/* meu app - main*/

void main() {
  runApp(const myapp());
}

/* stful */

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  TextEditingController _controller = TextEditingController();


  GlobalKey<FormState> g_var = GlobalKey<FormState>();

  void teste(){
    setState(() {
      String val = _controller.text;
        print(val);

    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /* navbar */
        appBar: AppBar(
          /* Cor da Navbar */
          backgroundColor: Colors.redAccent,
           /* Ações */
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          ],
          /* Titulo Navbar */
          title: Text('Hello'),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: (){},
          child: Icon(Icons.add),
        ),
        /*bottomNavigationBar: BottomAppBar(
          color: Colors.redAccent,
          shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home), iconSize: 42, color: Colors.white,padding: EdgeInsets.all(15),),
              IconButton(onPressed: (){}, icon: Icon(Icons.person),iconSize: 42, color: Colors.white, padding: EdgeInsets.all(15),),
            ],
          ),
        ),*/

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
        /* body */
          body: Form(
            key: g_var,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    /* TextField = input */
                    TextFormField(
                      validator: (String? x){
                        if (x!.isEmpty){
                          return 'Invalid Data';
                        }
                      },
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: 'Number',
                      ),
                      maxLength: 5,
                    ),
                    TextButton(onPressed: (){
                      if(g_var.currentState!.validate()){
                        teste();
                      }
                    },
                        child: Text('Click')),
                    SizedBox(height: 15,),
                    Text('Value')
                  ],
                ),
              ),
            ),
          ),

      )
    );
  }
}

