import 'package:flutter/material.dart';

class FieldsPages extends StatefulWidget {
  @override
  _FieldsPagesState createState() => _FieldsPagesState();
}

class _FieldsPagesState extends State<FieldsPages> {

  String _nombre = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(), 
          Divider(),
          _crearInputEmail(),
          Divider(),
          _crearInputPassword(),
          Divider(),
          _crearPersona()

        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //Al entrar se hace focus
      //autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (e) {
        setState(() {
         _nombre = e; 
        });
      },
    );
  }

  Widget _crearInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Email',
        labelText: 'Email',
        helperText: 'Solo es el Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (e) {
        setState(() => _email = e);
      },
    );
  }

  Widget _crearInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        hintText: 'Password',
        labelText: 'Password',
        helperText: 'Password',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock_open),
      ),
      onChanged: (e) {
        setState(() => _email = e);
      },
    );
  }


  Widget _crearPersona() {
    return ListTile(
        title: Text('El nombre es: $_nombre'),
        subtitle: Text('Email: $_email'),
    );

  }

}