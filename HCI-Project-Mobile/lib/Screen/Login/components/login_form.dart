import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/BottomBar.dart';
import 'package:flutter_application_1/Screen/Login/LoginSuccess.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/constants.dart';
import '../../Home/HomeScreen.dart';
import '../../Signup/SignupScreen.dart';
import '../../Home/BottomBar.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: "Email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Mật khẩu",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Column(
            children:[ Hero(
              tag: "login_btn",
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginSuccess()),
                );},
                child: Text(
                  "Đăng nhập".toUpperCase(),
                ),
              ),

            ),
              FloatingActionButton.extended(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSuccess())
              );}, icon: Image.asset(
                'assets/images/google_logo.png',
                height: 20,
                width: 20,
              ),
                label:
                Text("Đăng nhập với google".toUpperCase()),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,)
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
