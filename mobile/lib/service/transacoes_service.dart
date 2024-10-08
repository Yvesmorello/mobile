import 'dart:convert';

import 'package:http/http.dart' as http;

class TransacoesService{

    Future<void> getTransacoes() async{
        var response = await http.get(Uri.parse("http://localhost:3000/transacoes"));
        print(response.body);
    }

    Future<void> postTransacoes() async{
        var response = await http.post(Uri.parse("http://localhost:3000/transacoes"), body: jsonEncode(
            {'id':3, 'valor':120.0, 'tipo': 'débito'}
        ));
        print(response.body);
    } 

    Future<void> putTransacoes() async{
        var response = await http.put(Uri.parse("http://localhost:3000/transacoes/3"), body: jsonEncode(
            {'id':3, 'valor':200, 'tipo':'credito'}
            ));
        print(response.body);
    }
}