import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text(
                  "Jyoti Adhikari",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                accountEmail: Text("adkjyoti55@gmail.com")),
            ListTile(
              title: Text('Love me like u do'),
              subtitle: Text('Love me'),
              leading: Icon(Icons.ac_unit_outlined),
              onTap: () {
                print("U are loved");
              },
            ),
            ListTile(
              title: Text('Miss me like u do'),
              subtitle: Text('Miss me'),
              leading: Icon(Icons.ac_unit_outlined),
              onTap: () {
                print("U are Missed");
              },
            ),
            ListTile(
              title: Text('Meet me'),
              subtitle: Text('soon'),
              leading: Icon(Icons.ac_unit_outlined),
              onTap: () {
                print("On the way babe");
              },
            ),
            ListTile(
              title: Text('Hug me tight'),
              subtitle: Text('please'),
              leading: Icon(Icons.ac_unit_outlined),
              onTap: () {
                print("Come closer my love");
              },
            )
          ],
        ),
      ),
    );
  }
}
