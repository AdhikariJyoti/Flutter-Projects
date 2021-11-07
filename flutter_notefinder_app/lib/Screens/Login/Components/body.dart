import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Components/rounded_button.dart';
import 'package:untitled/Components/rounded_input_field.dart';
import 'package:untitled/Components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assests/images/book.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email ",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            RoundedPasswordField(
              hintText: "Your Password",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
