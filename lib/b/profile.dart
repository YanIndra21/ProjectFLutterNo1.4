import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const FittedBox(
            fit: BoxFit.scaleDown,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/ed/dd/f1/edddf105c78989e74e045fd67f79b353.jpg'),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Keqing',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'keqingwangy.kq@gmail.com',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          actions: [
            Container(
              width: 83,
              height: 35,
              margin: const EdgeInsets.fromLTRB(0, 9, 16, 9),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 0, 221, 163),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  data(
                    data_label: '156 cm',
                    label: 'Hight',
                  ),
                  data(
                    data_label: '45 kg',
                    label: 'Weight',
                  ),
                  data(
                    data_label: '17yo',
                    label: 'Age',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(8, 0, 8, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Account',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Account(
                    icon: Icons.person_outline_outlined,
                    title: 'Personal Data',
                  ),
                  Account(
                    icon: Icons.article_outlined,
                    title: 'Achievement',
                  ),
                  Account(
                    icon: Icons.incomplete_circle_outlined,
                    title: 'Activity History',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(8, 0, 8, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Notivication',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                    title: Text(
                      'Pop-up Notification',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: SwitchExample(),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(8, 0, 8, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Other',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Account(
                    icon: Icons.email_outlined,
                    title: 'contact us',
                  ),
                  Account(
                    icon: Icons.shield_outlined,
                    title: 'Privacy Policy',
                  ),
                  Account(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                  ),
                ],
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
      inactiveTrackColor: Color.fromRGBO(4, 0, 79, 1),
      activeColor: const Color.fromARGB(255, 0, 221, 163),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          unLight = value;
        });
      },
    );
  }
}

class Account extends StatelessWidget {
  final IconData icon;
  final String title;
  const Account({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
          size: 25,
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12),
        ),
        trailing: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(0, 0, 0, 0),
              elevation: 0,
              shadowColor: const Color.fromARGB(0, 0, 0, 0)),
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
            color: Colors.black,
          ),
          label: const Text(''),
        ));
  }
}

class data extends StatelessWidget {
  final String data_label;
  final String label;
  const data({
    Key? key,
    required this.data_label,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 15, 8, 15),
      height: 65,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: const Color.fromARGB(255, 247, 248, 248),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              data_label,
              style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 221, 163),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
