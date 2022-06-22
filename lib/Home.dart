import 'package:flutter/material.dart';
import 'package:jobs/APISer.dart';
import 'package:jobs/Resp.dart';

import 'Link.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<UserDetails> ImgList = [];
  void initState() {
    super.initState();
    fetchCar();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Home"),
    ),
        body: ListView.builder(
            itemCount: ImgList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return design(ImgList[index]);
            }));
  }

  Widget design(UserDetails data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Column(children: [
          Image.network(
            Linkurl.url + data.avatar,
            height: 100,
            width: 100,
          ),

          SizedBox(
            width: 20,
          ),
              Text("Id : ${data.id.toString()}"),
              Text("Email : ${data.email}"),
              Text("First Name : ${data.firstName}"),
              Text("Last Name : ${data.lastName}"),

        ]),
      ),
    );
  }

  Future<void> fetchCar() async {
    Welcome model = await APIService().ImgData();
    setState(() {
      ImgList = model.data;
    });
  }
}
