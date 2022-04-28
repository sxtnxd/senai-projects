import 'package:flutter/material.dart';

void main(){
  runApp(meuApp());
}

class meuApp extends StatefulWidget {
  const meuApp({Key? key}) : super(key: key);

  @override
  _meuAppState createState() => _meuAppState();
}

class _meuAppState extends State<meuApp> {

  int num = 0;
  String msg = "Inside";
  void comein(){
    setState(() {
      num++;
    });
  }
  void comeout(){
    setState(() {
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(

        appBar: AppBar(
          shadowColor: Colors.lightBlueAccent,
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(onPressed: (){},
                padding: EdgeInsets.only(right: 10),
                icon: Icon(Icons.refresh))
          ],
          title: Text('Controle de Pessoas'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/cafeteria.jpg'),
              fit: BoxFit.cover

            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num >= 20? 'Max Limit':msg, style: TextStyle(fontSize: 40),),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text('$num', style: TextStyle(fontSize: 40),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(100, 50),
                    backgroundColor: num<20 ? Colors.deepPurpleAccent:Colors.lightBlue,
                    elevation: 10,
                    shadowColor: Colors.black,
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed:num < 20 ? comein:null,
                      child: Text('In',
                        style: TextStyle(color: Colors.white),),
                    ),
                  SizedBox(width: 10),
                  TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: Size(100, 50),
                        backgroundColor:
                        num!=0 ? Colors.deepPurpleAccent:Colors.blue.withOpacity(0.8),
                        elevation: 10,
                        shadowColor: Colors.black,
                        primary: Colors.pink,
                        shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: num != 0 ? comeout:null,
                      child: Text('Out',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8)),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
