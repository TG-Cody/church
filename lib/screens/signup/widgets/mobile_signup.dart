import 'package:church/common/login_signup_components/bg_comp.dart';
import 'package:church/common/login_signup_components/button_comp.dart';
import 'package:church/common/login_signup_components/container_comp.dart';
import 'package:church/common/login_signup_components/login_signup_components.dart';
import 'package:church/common/login_signup_components/senha_signup.dart';
import 'package:church/common/login_signup_components/social_buttons.dart';
import 'package:church/common/logo.dart';
import 'package:church/css/css.dart';
import 'package:church/screens/login/login.dart';

import 'package:church/screens/navigation/navigation_screen.dart';
import 'package:flutter/material.dart';

class MobileSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BgComp(),
          ContainerComp(
            loginContainer: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 16),
                  child: Text(
                    "Igreja Do Evangelho Quandrangular",
                    style: igrejaMobile,
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Logo(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 25),
                          child: Text(
                            "Ministério",
                            style: ministerioMobile,
                          ),
                        ),
                        Text(
                          "Pr Francisco & Pra Wilma",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                LoginSignupComponents(
                  label: 'Usuario',
                  hint: 'Digite seu email',
                  prefix: Icons.person,
                  obscure: false,
                ),
                SizedBox(
                  height: 10,
                ),
                LoginSignupComponents(
                  label: 'Senha',
                  hint: 'Digite sua senha',
                  prefix: Icons.lock,
                  obscure: true,
                ),
                SizedBox(
                  height: 10,
                ),
                LoginSignupComponents(
                  label: 'Senha',
                  hint: 'Confirmar senha',
                  prefix: Icons.lock,
                  obscure: true,
                ),
                SizedBox(
                  height: 15,
                ),
                ButtonComp(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigationScreen(),
                      ),
                    );
                  },
                  color: Color(0xff3369FF),
                  title: "Signup",
                ),
                SizedBox(
                  height: 15,
                ),
                SenhaESignup(
                  onPressed: () {},
                  title: 'Esqueceu a Senha?',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      onTap: () {},
                      colors: Color(0xffFF334B),
                      title: 'G',
                    ),
                    SocialButton(
                      onTap: () {},
                      colors: Color(0xff2B5D95),
                      title: 'F',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SenhaESignup(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  title: 'Já possui uma conta? \nLogar Agora!',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
