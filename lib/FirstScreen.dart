import 'package:flutter/material.dart';
import 'SecondScren.dart';

class FirstFormState extends State {//класс первого окна
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {// создаем виджет
    return new Container(
        padding: EdgeInsets.all(10.0),
        child: new Form(//создаем форму 
            key: _formKey,//для ввода
            child: new Column(//контейнер
              children: <Widget>[//виджет

                new Text('Введите ФИО'),//текст ФИО
                new TextFormField(validator: (value) {//текстовая форма с валидатором 
                  if (value.isEmpty) return 'Пожалуйста введите ФИО';//если не пустое то воззвращаем ошибку
                  String a = "^[a-zA-Zа-яА-ЯёЁІіЇїЄєҐґ']";//переменная на введенные слова
                  RegExp regExp = new RegExp(a);//Не понятно что !!!!!!!!!!!!
                  if (regExp.hasMatch(value)) Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                  return 'Убедитесь в корректности ввода ФИО';//возвращает  ошибку
                }),
                new SizedBox(height: 20.0), //создаем контейнер высотой 20

                new Text('Введите E-mail'),//текст
                new TextFormField(validator: (value) {//Текстовая форма с валидатором
                  if (value.isEmpty) return 'Пожалуйста введите свой Email';//если пустое значение вернуть ошибку
                  String p ="[a-zA-Z0-9+.\_\%-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";//валидатор на эти символы
                  RegExp regExp = new RegExp(p);//не понятно что!!!!!!!!!!!!!
                  if (regExp.hasMatch(value)) Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));//переход к следующему экрану если что то то возвращает что то пустое иначе
                  return 'Это не E-mail';//ошибка
                }),
                new SizedBox(height: 20.0), //создаем контейнер высотой 20

                new RaisedButton(
                    onPressed: () {//создаем кнопку отправки
                      if (_formKey.currentState.validate())//если форма заполнена успешна
                        Scaffold.of(context).showSnackBar(new SnackBar(//что-то непонятное!!!!!!!!!!!!!!
                          content: //выводим текст
                              Text('Форма успешно заполнена'),//выводим текст
                          backgroundColor: Colors.green,//задний фон контейнера зеленый
                        ));}
                    ,child: Text('Отправить'),//текст кнопки
                    color: Colors.blue,//цвет синий
                    textColor: Colors.white)//текст белый
              ],
            )));
            }}

