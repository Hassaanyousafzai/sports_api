import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = {};

  Future<void> getSports() async {
    final response = await http.get(
      Uri.parse(
          'https://soccer.sportmonks.com/api/v2.0/players/14?api_token=aEWCPfTOr2w0CgSCc2gfRwOC1EqaH5PHiiugLbGC0DYR9hnnuMJoVipnG5GO&include=stats,lineups'),
    );

    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    getSports();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.photo_camera,
              color: Colors.white,
              size: 27,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Sports Players",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: PlayerDesign(
        name: data['data']['fullname'].toString(),
        name2: data['data']['common_name'],
        born: data['data']['birthcountry'],
        age: data['data']['age'].toString(),
        height: data['data']['height'],
        weight: data['data']['weight'],
        img: data['data']['image_path'],
      ),
    );
  }
}

class PlayerDesign extends StatelessWidget {
  const PlayerDesign({
    Key? key,
    required this.name,
    required this.name2,
    required this.born,
    required this.age,
    required this.height,
    required this.weight,
    required this.img,
  }) : super(key: key);

  final String name, name2, born, age, height, weight, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(name),
                Text(name2),
                Text(born),
                Text(age),
                Text(height),
                Text(weight),
              ],
            ),
            Image.network(
              img,
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerStats extends StatelessWidget {
  PlayerStats({
    Key? key,
    required this.appearances,
  }) : super(key: key);

  String goals = '0', assists = '0', yellowCards = '0', redCards = '0';

  int appearances;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text("Appearances: "),
              Text(appearances.toString()),
            ],
          ),
          Row(
            children: [
              const Text("goals: "),
              Text(goals),
            ],
          ),
          Row(
            children: [
              const Text("assists: "),
              Text(assists),
            ],
          ),
          Row(
            children: [
              const Text("yellowCards: "),
              Text(yellowCards),
            ],
          ),
          Row(
            children: [
              const Text("redCards: "),
              Text(redCards),
            ],
          ),
        ],
      ),
    );
  }
}
