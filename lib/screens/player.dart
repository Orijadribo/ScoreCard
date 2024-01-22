import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Add Player',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Row(children: [
                  IconButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(0),
                      icon: const Icon(
                        Icons.more_vert,
                      ))
                ])
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              // onChanged: onSearchTextChanged,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                hintText: 'First Name',
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.green.shade50,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              // onChanged: onSearchTextChanged,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                hintText: 'Last Name',
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.green.shade50,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              // onChanged: onSearchTextChanged,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                hintText: 'Gender',
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.green.shade50,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              // onChanged: onSearchTextChanged,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                hintText: 'Handicap Index',
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.green.shade50,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // const Padding(padding: EdgeInsets.all(10.0)),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text('Cancel'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
