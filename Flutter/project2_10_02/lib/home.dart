import 'package:flutter/material.dart';

class minhaHome extends StatefulWidget {
  const minhaHome({Key? key}) : super(key: key);

  @override
  _minhaHomeState createState() => _minhaHomeState();
}

class _minhaHomeState extends State<minhaHome> {

  /*-------------------------------------- VARIAVEIS ---------------------------------------*/

  TextEditingController v1 = TextEditingController();
  TextEditingController v2 = TextEditingController();
  String x = "Result ";

  /*---------------------------------------- FUNCÕES ----------------------------------------*/
  void calc(){
    double a = double.parse(v1.text);
    double b = double.parse(v2.text);

    double result = a+b;
    x = 'Resultado ${result.toStringAsFixed(2)}';
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      /*-------------------------------------- APPBAR ---------------------------------------*/
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.refresh, size: 30,)),
        ],
        title: Text('Calcular'),),
      /*---------------------------------------- BODY ---------------------------------------*/
      body: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.person, size: 50,),

            TextField(

              maxLength: 2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.person, size: 30,),
                labelText: 'Type a Number',
                labelStyle: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),

            TextField(
              maxLength: 20,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.alternate_email_sharp, size: 30,),
                labelText: 'Type a user',
                labelStyle: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),

            SizedBox(height: 20,),

            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black87,
                  fixedSize: Size(0, 50)
                ),
                onPressed: calc,
                child: Text('Go',
                style: TextStyle(color: Colors.white),
                )),
            Text('result '),
            


            ],
        ),
      ),
    );
  }
}
