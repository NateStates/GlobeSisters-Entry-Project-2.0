import 'package:flutter/material.dart';

/*GLOBAL VARIABLE*/

//TextFormField for Friends Name
final FriendsName_Controller = TextEditingController();


class InviteFriendsPage extends StatefulWidget {

  @override
  State<InviteFriendsPage> createState() => _InviteFriendsPageState();
}

class _InviteFriendsPageState extends State<InviteFriendsPage> {
  @override
  void dispose1() {
    FriendsName_Controller.dispose();
    super.dispose();
  }

  List<String> list_of_friends = []; //List of user entered names

  final Key_Var_Form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Column(children: <Widget>[
      SizedBox(
        height: 10.0,
      ),
      Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: 300,
          height: 260,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: list_of_friends.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                title: Text(list_of_friends[index]),
              ));
            },
          )),

      SizedBox(
        height: 10.0,
      ), //spacing

      Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: <Widget>[
              Form(
                key: Key_Var_Form,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty)
                          return 'Please enter a valid Name';
                        else
                          return null;
                      },
                      controller: FriendsName_Controller,
                      decoration: InputDecoration(
                        labelText: "Invite your friend!",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 10.0),
                    SendInviteButton(context),
                  ],
                ),
              ),
            ],
          ))
    ]);
  }


  OutlinedButton SendInviteButton(BuildContext context) {
    //setting the State and adding entered input to the list_of_friends list
    void addFriends(String friends) {
      setState(() {
        list_of_friends.add(friends);
      });
    }

    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(400, 50)),
      onPressed: () {
        if (Key_Var_Form.currentState!.validate()) {
          final addedFriend = FriendsName_Controller.text;
          addFriends(addedFriend);
          FriendsName_Controller.clear();
        }
      },
      child: Text(
        "Send Invite".toUpperCase(),
        style: const TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
      ),
    );
  }
}
