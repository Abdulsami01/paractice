import 'package:bootcamp/pages/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool onPress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Button'),
      ),
      body: Center(
        child: InkWell(
          onTap: () async {
            setState(() {
              onPress = true;
            });

            await Future.delayed(Duration(milliseconds: 1900));
            await Navigator.pushNamed(context, MyRotues.homeRoute);
            setState(() {
              onPress = false;
            });
          },
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: onPress ? Colors.teal : Colors.deepPurple,
              borderRadius: BorderRadius.circular(onPress ? 50 : 15),
            ),
            duration: Duration(milliseconds: 1700),
            width: onPress ? 50 : 150,
            height: onPress ? 40 : 50,
            alignment: Alignment.center,
            child: onPress
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : Text(
                    'L o g i n',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.robotoSlab().fontFamily,
                      fontSize: 16,
                    ),
                  ),
          ),
        ),
        // child: ElevatedButton(
        //   style: TextButton.styleFrom(maximumSize: Size(140, 50)),
        //   onPressed: () {
        //     Navigator.pushNamed(context, MyRotues.homeRoute);
        //   },
        //   child: Text('login'),
        // ),
      ),
    );
  }
}
