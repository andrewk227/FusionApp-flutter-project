import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Card numberCard() {
  return Card(
    color: Colors.white,
    child: Column(
      children: [
        Text("CR Number"),
        SizedBox(
          height: 10,
        ),
        Text("535243"),
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Column(children: [
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
            child: ElevatedButton(
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
      SizedBox(width: 10),
      Text(
        'ُ$status',
        style: TextStyle(fontSize: 10, color: Colors.black),
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
          Text(
            'Coroporate License',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
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
              SizedBox(width: 10),
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
