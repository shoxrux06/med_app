import 'package:flutter/material.dart';

class NatijaBodys extends StatefulWidget {
  const NatijaBodys({super.key});

  @override
  State<NatijaBodys> createState() => _NatijaBodysState();
}

class _NatijaBodysState extends State<NatijaBodys> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          child: Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.green,
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      '0',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      DateTime.now().toString(),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        _showMyDialog(context);
                      });
                    },
                    splashColor: Colors.red,
                    splashRadius: 25,
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white,
          child: Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.orange,
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      DateTime.now().toString(),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        _showMyDialog(context);
                      });
                    },
                    splashColor: Colors.red,
                    splashRadius: 25,
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white,
          child: Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text(
                      '10',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      DateTime.now().toString(),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        _showMyDialog(context);
                      });
                    },
                    splashColor: Colors.red,
                    splashRadius: 25,
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white,
          child: Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 10,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text(
                      '10',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      DateTime.now().toString(),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        _showMyDialog(context);
                      });
                    },
                    splashColor: Colors.red,
                    splashRadius: 25,
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Malumotlarni o\'zgartirish',
          textAlign: TextAlign.center,
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Bugungi malumotlarni o\'zgartira olmaysiz!!!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
