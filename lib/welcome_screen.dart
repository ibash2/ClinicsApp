import 'package:clinics_app/signin_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo-icon-square.png",
              scale: 4,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Добро пожаловать\nв приложение Здоровье!",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(28, 120, 103, 1),
                    fontFamily: "SF Pro Text"),
              ),
            ),
            Text(
              "В режиме Гость можете сделать запись,\nно медкарта будет доступна после\n подтверждения  регистрации в клинике.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(33, 29, 29, 1),
                  fontFamily: "SF Pro Text"),
            ),
            SizedBox(
              height: 149,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                height: 46,
                width: 328,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
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
            SizedBox(
              height: 46,
              width: 328,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1, color: Color.fromRGBO(28, 120, 103, 1)),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Режим гостя",
                    style: TextStyle(
                        color: Color.fromRGBO(28, 120, 103, 1),
                        fontFamily: "SF Pro Text",
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
