import 'package:flutter/material.dart'; // пакет материал дизайн
import 'FirstScreen.dart';

void main() => runApp(//вызываем главный виджет
    new MaterialApp(
        debugShowCheckedModeBanner: false, //отключаем баннер в режиме проверки
        home: Scaffold(//класс скефолд
            appBar: new AppBar(title: new Text('Forms')), //Название приложения
            body: MyForm())));//ворма


class MyForm extends StatefulWidget {//класс формы 
  @override
  State<StatefulWidget> createState() => FirstFormState();
}
