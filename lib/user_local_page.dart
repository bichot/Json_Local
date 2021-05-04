import 'package:flutter/material.dart';
import 'package:prueba_json/api/user_api.dart';
import 'package:prueba_json/user/model/user.dart';

class UserLocalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<User>>(
            future: UserApi.getUserlocally(context),
            builder: (context, snapshot) {
              final users = snapshot.data;

              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError) {
                    return Center(child: Text('Error occurred'));
                  } else {
                    return buildUsers(users);
                  }
              }
            }),
      );
  Widget buildUsers(List<User> users) => ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return Card(
          child: Column(children: <Widget>[
            Text("id: " + user.id),
            Text("names: " + user.names),
            Text("lastNames: " + user.lastNames),
            Text("email " + user.email),
            Text("address " + user.address),
            Text("phone " + user.phone),
            Text("password " + user.password),
            //Text("createdAt " + user.createdAt),
            //Text("updatedAt " + user.updatedAt),
          ]),
        );
      });
}
