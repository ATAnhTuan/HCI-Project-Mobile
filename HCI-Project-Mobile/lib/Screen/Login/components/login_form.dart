import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Login/LoginSuccess.dart';
import 'package:flutter_application_1/components/forget_password.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/constants.dart';
<<<<<<< HEAD
import '../../Home/BottomBar.dart';
=======
import '../../ForgetPassword/ForgetPasswordScreen.dart';
>>>>>>> 5a0eea09d89d8400efc5c19a5600171c6b4206ba
import '../../Signup/SignupScreen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.account_circle_outlined),
              labelText: 'Email',
            ),
          ),
          Text(""),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock_outline_rounded),
              labelText: 'Mật khẩu',
            ),
          ),
          const SizedBox(height: defaultPadding),
<<<<<<< HEAD
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),),
              onPressed: () 
              {
              //   Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const BottomBar()),
              // );
              },
              child: Text(
                "Đăng nhập".toUpperCase(),
=======
          ForgetPasswordCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ForgetPasswordScreen();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: defaultPadding),
          Column(
            children: [
              Hero(
                tag: "login_btn",
                child: SizedBox(
                  height: 35,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginSuccess()),
                      );
                    },
                    child: Text(
                      "Đăng nhập".toUpperCase(),
                    ),
                  ),
                ),
>>>>>>> 5a0eea09d89d8400efc5c19a5600171c6b4206ba
              ),
              Text(""),
              Text(
                  "________________          Hoặc          ________________"),
              Text(""),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginSuccess()));
                },
                icon: Image.asset(
                  'assets/images/google_logo.png',
                  height: 20,
                  width: 20,
                ),
                label: Text("Đăng nhập với google".toUpperCase()),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              )
            ],
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
