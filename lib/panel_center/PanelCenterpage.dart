//Bismillahirrahmanirrahim
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';
import '../panel_left_pages/curved_chart.dart';
import 'LinearGraph.dart';

class Person {
  String name;
  Color color;

  Person({required this.name, required this.color});
}

class PanelCenterpage extends StatefulWidget {
  const PanelCenterpage({Key? key}) : super(key: key);

  @override
  State<PanelCenterpage> createState() => _PanelCenterpageState();
}

class _PanelCenterpageState extends State<PanelCenterpage> {
  List<Person> _people = [
    Person(name: 'Ahmet Yıldız', color: orangeDark),
    Person(name: "Mahmut Erdem", color: Color(0xff0293ee)),
    Person(name: "Muhammet Biler", color: Color(0xfff8b250)),
    Person(name: "Mehmet Demir", color: Color(0xff13d38e)),
    Person(name: "Ferhat Turcihan", color: Color(0xfff8b250)),
    Person(name: "Talha Tuna", color: Color(0xffff5182)),
    Person(name: "Ali Osman", color: Color(0xff0293ee)),
    Person(name: "Oğuzhan Başalan", color: Color(0xffff5182)),
    Person(name: "Hamza Berk", color: Color(0xff13d38e)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BarChartSample2(),
            Padding(
              padding: const EdgeInsets.only(
                left: kPadding / 2,
                right: kPadding / 2,
                top: kPadding / 2,
              ),
              child: Card(
                  color: purpleLight,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    width: double.infinity,
                    child: ListTile(
                      title: Text(
                        'Products Available',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        '56% of the Products Available',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Chip(
                        label: Text(
                          "41,500",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )),
            ),
            //chart padding
            Padding(
              padding: const EdgeInsets.only(
                bottom: kPadding,
                left: kPadding / 2,
                right: kPadding / 2,
                top: kPadding,
              ),
              child: Card(
                color: purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: List.generate(
                    _people.length,
                    (index) => ListTile(
                      leading: CircleAvatar(
                        radius: 15,
                        child: Text(
                          _people[index].name.substring(0, 1),
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: _people[index].color,
                      ),
                      title: Text(
                        _people[index].name,
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
