import 'package:flutter/material.dart';

import '../../shared/commponents/commponents.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var PasswordController = TextEditingController();

  var formkey=  GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    label: 'Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (value){
                      if(value!.isEmpty){
                        return 'email must not be empty';
                      }
                    },

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: PasswordController,
                    label: 'password',
                    prefix: Icons.lock,
                    suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                    isPassword: isPassword,
                    suffixPressed: (){
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    type: TextInputType.visiblePassword,
                    validate: (value){
                      if(value!.isEmpty){
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                      //width: double.infinity,
                      function: (){
                        if (formkey.currentState!.validate()){
                          print(emailController.text);
                          print(PasswordController.text);
                        }

                      },
                      text: 'login',
                  ),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                  // defaultButton(
                  //   //width: double.infinity,
                  //     background: Colors.red,
                  //     function: (){
                  //       print(emailController.text);
                  //       print(PasswordController.text);
                  //     },
                  //     text: 'ReGIster',
                  //     isUpperCase: false,
                  // ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(onPressed: (){}, child: Text(
                        'register now',
                      ))
                    ],
                  ),
                ],
              ),
            ),
           ),
        ),
      ),
    );
  }
}
