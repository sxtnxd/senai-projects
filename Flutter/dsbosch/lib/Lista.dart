import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  List dados = [];

  void mostraDados(){

    for(int i = 0; i < 10; i++){
      Map<String, dynamic> map = Map();
      map['titulo'] = 'Nome do produto';
      map['subtitulo'] = 'R\$ 20.5';
      dados.add(map);
    }
  }


  @override
  Widget build(BuildContext context) {
    dados = [];
    mostraDados();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Lista de Alunos'),
      ),
      body: ListView.builder(

          itemCount: dados.length,
          itemBuilder: (context, indice) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.restore_from_trash, color: Colors.black, size: 20,),
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Row(children: [
                        Icon(Icons.warning),
                        Text('Exclusão'),
                      ],),
                      titlePadding: EdgeInsets.all(10),
                      content: Text('Deseja realmente excluir produto ${dados[indice]['titulo']}?'),
                      contentPadding: EdgeInsets.all(30),
                      actions: [
                        TextButton(onPressed: ()=>Navigator.pop(context), child: Text('Sim')),
                        TextButton(onPressed: ()=>Navigator.pop(context), child: Text('Não')),
                      ],
                    );
                    
                  });
                },
                title: Text('${dados[indice]['titulo']}'),
                subtitle: Text('Valor ${dados[indice]['subtitulo']}'),
              ),
            );
          }),
    );
  }
}
