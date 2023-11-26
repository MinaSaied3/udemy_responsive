import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //for passing data form textformfield to button
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  //To validate a TextFormField we need to wrap its column with Form widget and giving it a key.
  var formKey = GlobalKey<FormState>();

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
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ), //مسافة
                  defaultFormField(
                    controller:emailController,
                    label: 'email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validator: (value)
                    {
                      if(value.isEmpty)
                      {
                        return 'email must not be empty';
                      }
                      if (!RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+$').hasMatch(value)) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                  ),
                  /*TextFormField(
                    controller: emailController,
                    //بتحط علامة @ فى الكيبورد و ممكن تغير الكيبورد لأرقام لو غيرت ال TextInputType ل phone
                    keyboardType: TextInputType.emailAddress,
                    //بتطبعلى ال text الى بكتبة فى TextFormField
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    //بتطبعلى كل حرف بيتكتب فى TextFormField
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'email address must not be empty ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // hintText: 'Email Adress',
                      // بتخلي الكلمة تختفي بعد ما بكتب في البوكس
                      labelText: 'Email Adress',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                      //بتعمل بوكس في المكان بتاع التكست
                    ),
                  ),*/
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller:passwordController,
                    label: 'Password',
                    prefix: Icons.lock,
                    type: TextInputType.visiblePassword,
                    isPassword: isPassword,
                    suffixPressed: ()
                    {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    suffix: isPassword? Icons.visibility :Icons.visibility_off,
                    validator: (value)
                    {
                      if(value.isEmpty)
                      {
                        return 'password must not be empty';
                      }
                      return null;
                    },
                  ),
                  /*TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    //makes the text invisible
                    obscureText: true,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'password must not be empty ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // hintText: 'Email Adress',
                      // بتخلي الكلمة تختفي بعد ما بكتب في البوكس
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),
                      //بتعمل بوكس في المكان بتاع التكست
                    ),
                  ),*/
                  SizedBox(
                    height: 20.0,
                  ),
                  DeafaultButton(
                    text: 'login',
                    function: () {
                      if(formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  DeafaultButton(
                    background: Colors.green,
                    width: 200.0,
                    text: 'LoGiN',
                    isUpperCase: false,
                    function: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                  ),
                  /*Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),*/
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Register Now'),
                      ),
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
