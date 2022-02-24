import 'package:flutter/material.dart';
import 'package:gmailui1/Widget/FloatingActionButton.dart';
import 'package:gmailui1/Widget/SearchBox.dart';
import 'package:gmailui1/Widget/title.dart';
import 'package:gmailui1/api/users_api.dart';
import 'package:gmailui1/model/user.dart';


class Chat extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<User>>(
        future: UsersApi.getUsersLocally(context),
        builder: (context, snapshot) {
          final users = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return Center(child: Text('Some error occurred!'));
              } else {
                return buildUsers(users!);
              }
          }
        },
      ),
    );
  }

  Widget buildUsers(List<User> users) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingButton(Icons.chat_bubble_outline),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 5),
        child: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            snap: true,
            pinned: false,
            floating: true,
            backgroundColor: Colors.white,
            title: SearchBox('Search in Chat'),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                SingleChildScrollView(
                  child: Column(
                    children: [
                      title('Chat'),
                      Container(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];

                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(user.urlAvatar),
                              ),
                              title: Text(user.username),
                              subtitle: Text(user.email),
                              trailing: Padding(
                                padding: const EdgeInsets.only(top: 10.7),
                                child: Column(
                                  children: [
                                    Text(user.date),
                                    Icon(Icons.star_border),
                                  ],
                                ),
                              ),
                            );

                          },
                        ),
                      ),

                    ],
                  ),
                )
              ]))
        ]),
      ),
    );
  }
}
