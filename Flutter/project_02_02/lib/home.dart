import 'package:flutter/material.dart';

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  int num = 0;

  void getIn() {
    setState(() {
      num++;
    });
  }

  void getOut() {
    setState(() {
      num--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Controle', style: TextStyle(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pode Entrar', style: TextStyle(fontSize: 30),),
          Text('$num', style: TextStyle(fontSize: 60),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.lightBlueAccent,
                    fixedSize: Size(100, 40),
                  ),
                  onPressed: getIn,
                  child: Text('entrou', style: TextStyle(color: Colors.white),)),


              SizedBox(height: 0, width: 5),


              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: num!=0 ? Colors.lightBlueAccent: Colors.white.withOpacity(0.8),
                    fixedSize: Size(100, 40),
                  ),
                  onPressed: num!=0 ? getOut:null,
                  child: Text('saiu', style: TextStyle(color: Colors.white),)),
            ],
          )

        ],

      ),
    );
  }
}
