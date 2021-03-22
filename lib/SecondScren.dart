import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget{//класс второго окна
  @override
  Widget build(BuildContext context) {//строим виджет
    return Scaffold(
      appBar: AppBar(title: Text('Второе окно')),//верхний колонтилул 
      body: Center(child: RaisedButton(onPressed: (){//тело с кнокой
        Navigator.pop(context);//навигатор назад
      }, child: Text('Назад'),),),//текст с кнопкой назад
    );
  }}
