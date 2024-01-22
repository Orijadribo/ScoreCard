import 'package:flutter/material.dart';
import 'package:scorecard/constants/names.dart';
import 'package:scorecard/screens/player.dart';

class Players extends StatefulWidget {
  const Players({super.key});

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Players',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(children: [
                IconButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Player()));
                    },
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.add,
                    )),
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
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            itemCount: sampleNames.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.only(bottom: 20),
                color: Colors.green.shade50,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    onTap: () {},
                    title: RichText(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          text:
                              '${sampleNames[index].fName} ${sampleNames[index].lName}\n',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Handicap Index: ${sampleNames[index].handicapIndex}\nPlaying Index: ${sampleNames[index].playingIndex}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),
                          ]),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Updated : today',
                        style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey.shade800),
                      ),
                    ),
                  ),
                ),
              );
            },
          )),
        ],
      ),
    ));
  }
}
