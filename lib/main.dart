import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Phone Dialer App",
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["Kiran Maharjan", "Sapana Maharjan", "Shreyan Maharjan"];
  var phoneNumber = ["9823587472", "9880163680", "9849123930"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE21717),
          title: Text("Phone Dialer App"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: (){
                launch("tel:${phoneNumber[index]}");
              },
            ),
          );
      }
      ),
      ),
    );
  }
}



