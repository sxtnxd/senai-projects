import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  bool x = false;
  bool y = false;
  String s = 'F';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Alunos'),
        backgroundColor: Colors.red,
      ),

      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Digite',
              ),
            ),

            Card(
              child: CheckboxListTile(
                secondary: Icon(Icons.person, size: 30),
                title: Text('Suga'),
                  subtitle: Text('Não gostei'),
                  value: x, onChanged: (bool? valor){
                    setState(() {
                      x = valor!;
                    });

              }),
            ),

            RadioListTile(
              title: Text('Fem'),
                value: 'F', groupValue: s, onChanged: (String? valor){
                  setState(() {
                    s = valor!;
                  });
            }),
            RadioListTile(
                title: Text('Masc'),
                value: 'M', groupValue: s, onChanged: (String? valor){
              setState(() {
              s = valor!;
              });
            }),
            RadioListTile(
                title: Text('Outros'),
                value: 'O', groupValue: s, onChanged: (String? valor){
              setState(() {
                s = valor!;
              });
            }),

            Row(
              children: [
                Switch(value: false, onChanged: (valor){}),
                Text('Deseja ficar conectado?'),
              ],
            ),

            Container(
              color: Colors.black87,
                width: EdgeInsetsGeometry.infinity.horizontal,
                child: TextButton(onPressed: (){},
                    child: Text('Salvar', style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
