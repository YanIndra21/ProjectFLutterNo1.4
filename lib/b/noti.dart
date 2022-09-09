import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

import '../main.dart';

class Notif extends StatelessWidget {
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Notification',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            width: 20,
            margin: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return myApp();
                }));
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
                size: 10,
              ),
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                primary: Color.fromARGB(255, 247, 248, 248),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
            ),
          ),
          actions: [
            Container(
              width: 55,
              color: Colors.white,
            )
          ],
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Color.fromARGB(40, 0, 0, 0),
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return N(
              imgUrl: "https://picsum.photos/id/$index/200/300",
              sms: faker.lorem.sentence(),
              waktu: "3 hours",
            );
          },
        ),
      ),
    );
  }
}

class N extends StatelessWidget {
  final String imgUrl;
  final String sms;
  final String waktu;

  const N(
      {Key? key, required this.imgUrl, required this.sms, required this.waktu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      title: Text(
        sms,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        'about $waktu ago',
        maxLines: 1,
        style: const TextStyle(
          color: Color.fromARGB(100, 0, 0, 0),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ),
    );
  }
}
