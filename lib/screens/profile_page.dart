import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 45, top: 20, bottom: 7, right: 12),
                  child: Text(" Looking good, Laura!",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 100,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 3),
                child: Image.asset("assets/images/flower2.png")),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sister3.jpg"))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          color: Colors.cyan,
                        ),
                        child: Icon(Icons.edit, color: Colors.white),
                      ))
                ],
              ),
            ),
            User_Entry_TextFrield("Full Name", "Laura Harris"),
            User_Entry_TextFrield("Email", "lauraharris@gmail.com"),
            User_Entry_TextFrield("Age", "22"),
            User_Entry_TextFrield("Username", "@Lauren_H")
          ],
        ),
      ),
    ));
  }

  Widget User_Entry_TextFrield(String labelText, String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 5),
      child: TextField(
        decoration: InputDecoration(
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700])),
      ),
    );
  }
}
