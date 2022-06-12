import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  // controller for textfield
  TextEditingController myTextName = TextEditingController();
  TextEditingController myTextAddress = TextEditingController();
  TextEditingController myTextNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new contact'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/200/300.jpg'),
                radius: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: myTextName,
                autocorrect: false,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person_add,
                    size: 25,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Full name...',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: myTextAddress,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.home_rounded,
                    size: 25,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                  hintText: 'Insert Address...',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: myTextNumber,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    size: 25,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Home or Phone Number...',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Save Contact'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
