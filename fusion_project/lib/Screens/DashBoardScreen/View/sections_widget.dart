import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:fusion_project/app_imports.dart';

Card numberCard() {
  return Card(
    color: Colors.white,
    child: Column(
      children: [
        const Text("CR Number"),
        const SizedBox(
          height: 10,
        ),
        const Text("535243"),
        const SizedBox(
          height: 10,
        ),
        Row(children: [
          const Column(children: [
            Text("Expiring on:"),
            Text(
              "09/09/2022",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ]),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const ElevatedButton(
                onPressed: null,
                child: Row(children: [Text("Share"), Icon(Icons.share)])),
          )
        ])
      ],
    ),
  );
}

Widget iconWithStatus(IconData icon, String status) {
  return Row(
    children: [
      Icon(icon, color: Colors.green, size: 15),
      const SizedBox(width: 10),
      Text(
        'ُ$status',
        style: const TextStyle(fontSize: 10, color: Colors.black),
      ),
    ],
  );
}

Widget licenceCard() {
  return Card(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Coroporate License',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Column(
                children: [
                  iconWithStatus(Icons.check_circle_outline, 'Expiring soon'),
                  iconWithStatus(Icons.check_circle_outline, 'Expiring soon'),
                  iconWithStatus(Icons.check_circle_outline, 'Expiring soon'),
                  iconWithStatus(Icons.check_circle_outline, 'Expiring soon'),
                ],
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 100,
                height: 100,
                child: PieChart(PieChartData(sections: [
                  PieChartSectionData(
                    color: Colors.green,
                    radius: 10,
                  ),
                  PieChartSectionData(
                    color: Colors.red,
                    radius: 10,
                  ),
                  PieChartSectionData(
                    color: Colors.yellow,
                    radius: 10,
                  )
                ])),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildCard(String title, String subtitle, IconData? icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: FAppTheme.defaultFusionColor,
        backgroundImage:
            icon == null ? const AssetImage('assets/images/user.png') : null,
        child: icon != null
            ? Icon(
                icon,
                color: Colors.white,
              )
            : null,
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      Text(
        subtitle,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      )
    ]),
  );
}

Widget expiredCard() {
  return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Employee who has expired licence",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCard('Joe', 'Today', null),
                    buildCard('Joe', 'Today', null),
                    buildCard('Joe', 'Today', null),
                    buildCard('Joe', 'Today', null),
                    buildCard('Joe', 'Today', null),
                    buildCard('Joe', 'Today', null),
                    buildCard('Joe', 'Today', null),
                    buildCard('Joe', 'Today', null),
                  ],
                ))
          ],
        ),
      ));
}

Widget serviceCard() {
  return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Employee who has expired licence",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCard('Joe', 'Today', Icons.folder),
                    buildCard('Joe', 'Today', Icons.drafts),
                    buildCard('Joe', 'Today', Icons.search),
                    buildCard('Joe', 'Today', Icons.archive),
                    buildCard('Joe', 'Today', Icons.archive),
                    buildCard('Joe', 'Today', Icons.archive),
                    buildCard('Joe', 'Today', Icons.archive),
                    buildCard('Joe', 'Today', Icons.archive),
                  ],
                ))
          ],
        ),
      ));
}
