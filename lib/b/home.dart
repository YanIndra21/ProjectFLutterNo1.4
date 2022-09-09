import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:home_screen3/b/noti.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              child: const CircleAvatar(
                backgroundImage: const NetworkImage(
                    'https://i.pinimg.com/564x/ed/dd/f1/edddf105c78989e74e045fd67f79b353.jpg'),
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome back Keqing',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 3, 193, 142),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'how are you doing today ?',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          actions: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 6, 5, 4),
              child: SizedBox(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Notif();
                    }));
                  },
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 16,
                  ),
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    primary: const Color.fromARGB(255, 247, 248, 248),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 247, 248, 248),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  label: Row(
                    children: [
                      const Icon(Icons.search),
                      const Text(
                        'Search',
                        style: const TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                maxLines: 1,
                onTap: () => print('something'),
              ),
            ),
            const ListTile(
              title: const Text(
                'Today’s Plan',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    height: 72,
                    width: 164,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromARGB(255, 4, 0, 79),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const ListTile(
                          title: Text(
                            'Activity',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '30 minutes',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://assets.pikiran-rakyat.com/crop/0x87:774x669/x/photo/2022/05/28/3481259983.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    height: 72,
                    width: 164,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromARGB(255, 4, 0, 79),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const ListTile(
                          title: Text(
                            'Meditate',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '15 minutes',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://st4.depositphotos.com/26272580/30235/v/1600/depositphotos_302358122-stock-illustration-man-meditating-in-nature-concept.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    height: 72,
                    width: 164,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromARGB(255, 4, 0, 79),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const ListTile(
                          title: Text(
                            'Food',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text(
                            '2 recipes',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          trailing: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdOdj_0zJxzI2nnRCTDuX0w2hG6w69I9recQ&usqp=CAU'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 16),
                    height: 72,
                    width: 164,
                    padding: const EdgeInsets.fromLTRB(16, 19, 16, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromARGB(255, 0, 221, 163),
                    ),
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'Let’s Go',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 61,
                          height: 6,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 0, 79, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                'Upcoming acivities',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'See more',
                style: const TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 155, 153, 185)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'http://images.gofreedownload.net/jump-rope-sport-vector-4791.jpg'),
                    ),
                    title: Text(
                      'Fullbody workout',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Today, 09.00 AM',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    ),
                    trailing: SwitchExample(),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/vectors/fitness-people-vector-id851716412?k=20&m=851716412&s=612x612&w=0&h=o1aUr9GgINU286hI64kOcKZS0dj0Ble8lWNYzd008j8='),
                    ),
                    title: Text(
                      'Upperbody Workout',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Today, 09.00 AM',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    ),
                    trailing: SwitchExample(),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 22, 16, 15),
              child: const Text(
                'Recommended for you',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: const Color.fromARGB(255, 4, 0, 79),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                margin: EdgeInsets.only(top: 16),
                height: 132,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                child: const Text(
                                  'Fullbody Workout',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text(
                                '11 Excresise | 32 minutes',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(0, 221, 163, 1),
                                    ),
                                    child: const Text(
                                      'view more',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 132,
                            child: Image.network(
                              'https://media.istockphoto.com/vectors/cute-young-girl-in-red-shorts-jump-in-rope-vector-id1207731535?k=20&m=1207731535&s=612x612&w=0&h=SO_Ik57gD2A_q8OoTWScZV-6OaV2ldoG6-QMhZh3PF8=',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                margin: EdgeInsets.only(top: 16),
                height: 132,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                child: const Text(
                                  'Lowerbody Workout',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text(
                                '12 Excresise | 40 minutes',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(0, 221, 163, 1),
                                    ),
                                    child: const Text(
                                      'view more',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 132,
                            child: Image.network(
                              'https://media.istockphoto.com/vectors/fitness-training-in-gym-athletic-woman-running-on-treadmill-young-vector-id1338513375?k=20&m=1338513375&s=612x612&w=0&h=3aaQscOfjX4B5dv_D1lqEOVpG6_WYg6qVmfcpTiol28=',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                margin: EdgeInsets.only(top: 16),
                height: 132,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 247, 248, 248),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                child: const Text(
                                  'AB Workout',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text(
                                '11 Excresise | 32 minutes',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(0, 221, 163, 1),
                                    ),
                                    child: const Text(
                                      'view more',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 132,
                            child: Image.network(
                              'https://media.istockphoto.com/vectors/man-doing-sit-ups-exercise-abdominals-exercise-flat-vector-isolated-vector-id1407639801?k=20&m=1407639801&s=612x612&w=0&h=ag8JoxjqFWBl7F_crpR-WWLm3dup7tM7AZd9PNp9kGU=',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});
  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool unLight = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: unLight,
      inactiveTrackColor: const Color.fromRGBO(4, 0, 79, 1),
      activeColor: const Color.fromRGBO(0, 221, 163, 1),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(
          () {
            unLight = value;
          },
        );
      },
    );
  }
}

// DONE(1)
