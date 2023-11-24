import 'package:flutter/material.dart';

class Callpage extends StatelessWidget {
  const Callpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
            2,
            (index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                    ),
                    title: Text(
                      'John',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.red,
                        ),
                        Text('Today, 9:32 am')
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
