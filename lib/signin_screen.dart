import 'package:clinics_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var controller = new MaskedTextController(mask: '0000-0000-000-00');

  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Авторизация",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "SF Pro Text",
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "images/logo-icon-square.png",
              scale: 6,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 48.0),
              child: Text("Здоровье",
                  style: TextStyle(
                      color: Color.fromRGBO(28, 120, 103, 1),
                      fontFamily: "SF Pro Text",
                      fontSize: 20,
                      fontWeight: FontWeight.w700)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 23.0, bottom: 48.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                      color: Color.fromRGBO(124, 124, 124, 1), width: 2),
                ),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: "Номер медкарты",
                    suffixIcon: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Image.asset(
                        "images/Cross Icon.png",
                        height: 17,
                        width: 17,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {},
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 23.0, bottom: 48.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                      color: Color.fromRGBO(124, 124, 124, 1), width: 2),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Пароль",
                    suffixIcon: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Image.asset(
                        "images/Cross Icon.png",
                        height: 17,
                        width: 17,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {},
                ),
              ),
            ),
            CheckboxListTile(
              title: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Я прочитал и согласен с условиями ',
                      style: TextStyle(
                          color: Color.fromRGBO(33, 29, 29, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Display"),
                    ),
                    TextSpan(
                      text: ' Пользовательского соглашения',
                      style: TextStyle(
                        color: Color.fromRGBO(1, 85, 79, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue!;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            SizedBox(
              height: 104,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: SizedBox(
                height: 46,
                width: 328,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomePage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromRGBO(28, 120, 103, 1),
                  child: Center(
                    child: Text(
                      "Войти",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SF Pro Text",
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 23.0),
              child: RichText(
                text: TextSpan(
                  text: 'Обратитсесь в ',
                  style: TextStyle(
                      color: Color.fromRGBO(33, 29, 29, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SF Pro Display"),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Службу поддержки',
                      style: TextStyle(
                        color: Color.fromRGBO(1, 85, 79, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ", если забыли свои данные",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
