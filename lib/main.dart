import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CreateAcc(),
    );
  }
}

class ChangeName extends StatelessWidget {
  const ChangeName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1E2D),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Изменить ФИО",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xffFFFFFF),
          ),
        ),
        backgroundColor: Color(0xff0B1E2D),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 89, horizontal: 28),
        child: Column(
          children: [
            CustomTextField(
              labelText: 'Имя',
              hintText: 'Введите свое имя',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              labelText: 'Фамилия',
              hintText: 'Введите свою фамилию',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              labelText: 'Отчество',
              hintText: 'Введите свое отчество',
            ),
            SizedBox(
              height: 350,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8507,
              height: MediaQuery.of(context).size.height * 0.0591,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff22A2BD),
                  ),
                  child: Text(
                    'Сохранить',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Color? color;
  final Color? hintColor;
  final Color? labelColor;
  final Icon? icon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.color,
    this.hintColor,
    this.labelColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: labelColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          width: MediaQuery.of(context).size.width * 0.8507,
          height: MediaQuery.of(context).size.height * 0.0591,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: icon,
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                color: hintColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CreateAcc extends StatelessWidget {
  const CreateAcc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xff0A1B28),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: MediaQuery.of(context).size.width * 0.7253,
              height: MediaQuery.of(context).size.height * 0.0443,
              child: Text(
                'Создать аккаунт',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            CustomTextField(
              labelColor: Color(0xff0A1B28),
              hintText: 'Имя',
              labelText: 'Имя',
              color: Color(0xffF2F2F2),
              hintColor: Color(0xff5B6975),
            ),
            CustomTextField(
              labelColor: Color(0xff0A1B28),
              hintText: 'Фамилия',
              labelText: 'Фамилия',
              color: Color(0xffF2F2F2),
              hintColor: Color(0xff5B6975),
            ),
            CustomTextField(
              labelColor: Color(0xff0A1B28),
              hintText: 'Отчество',
              labelText: 'Отчество',
              color: Color(0xffF2F2F2),
              hintColor: Color(0xff5B6975),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36),
              child: Divider(
                height: 1,
                thickness: 1,
              ),
            ),
            CustomTextField(
              icon: Icon(
                Icons.person,
                color: Color(0xff5B6975),
              ),
              labelColor: Color(0xff0A1B28),
              hintText: 'Логин',
              labelText: 'Логин',
              color: Color(0xffF2F2F2),
              hintColor: Color(0xff5B6975),
            ),
            CustomTextField(
              icon: Icon(
                Icons.lock,
                color: Color(0xff5B6975),
              ),
              labelColor: Color(0xff0A1B28),
              hintText: 'Пароль',
              labelText: 'Пароль',
              color: Color(0xffF2F2F2),
              hintColor: Color(0xff5B6975),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8507,
                height: MediaQuery.of(context).size.height * 0.0591,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    primary: Color(0xff22A2BD),
                  ),
                  child: Text(
                    'Создать',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
