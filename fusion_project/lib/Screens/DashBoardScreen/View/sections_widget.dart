import 'package:flutter/material.dart';

Card numberCard() {
  return const Card(
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
          ElevatedButton(
              onPressed: null,
              child: Row(children: [Text("Share"), Icon(Icons.share)]))
        ])
      ],
    ),
  );
}

Card numberCard2() {
  return const Card(
    child: Column(
      children: [
        Text("LW ANDREW"),
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
          ElevatedButton(
              onPressed: null,
              child: Row(children: [Text("Share"), Icon(Icons.share)]))
        ])
      ],
    ),
  );
}

Card numberCard3() {
  // bgd ya3ne yasta ? ? ? ? xDDD ahahhahahahah
// kont bfkr a3ml el ui bsor3a bs 7aset eno laaaaaaaaaaaaaaaaaaa msh ader ..... alah y5rbetk b2et mo3dyyyyy ... ya 3m bel shefaa
// enta b2et moayad gdan e3ne bas el mo4kla en ana 5fet 7arfyan XDDDDDDDDDDD
// ana 5fet asln
// ya 3m gn ya gn
  return const Card(
    child: Column(
      children: [
        Text("LW ANDREW"),
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
          ElevatedButton(
              onPressed: null,
              child: Row(children: [Text("Share"), Icon(Icons.share)]))
        ])
      ],
    ),
  );
}
