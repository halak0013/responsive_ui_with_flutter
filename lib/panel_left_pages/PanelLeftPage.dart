import 'package:flutter/material.dart';
import 'package:responsive_ui_with_flutter/constants.dart';
import 'package:responsive_ui_with_flutter/panel_left_pages/CircelGaph.dart';

import '../responsive_layout.dart';
import 'curved_chart.dart';

class PanelLeftPage extends StatefulWidget {
  const PanelLeftPage({Key? key}) : super(key: key);

  @override
  State<PanelLeftPage> createState() => _PanelLeftPageState();
}

class Todo {
  String name;
  bool enable;

  Todo({required this.name, this.enable = true});
}

class _PanelLeftPageState extends State<PanelLeftPage> {
  List<Todo> _todos = [
    Todo(name: "Purchase Paper", enable: true),
    Todo(name: "Refill the inventory of speakers", enable: true),
    Todo(name: "Hire someone", enable: true),
    Todo(name: "Maketing Strategy", enable: true),
    Todo(name: "Selling furniture", enable: true),
    Todo(name: "Finish the disclosure", enable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
              color: purpleLight,
              width: 50,
              child: Container(
                decoration: BoxDecoration(
                  color: purpleDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
          SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: kPadding / 2,
                  right: kPadding / 2,
                  top: kPadding / 2,
                ),
                child: Card(
                  color: purpleLight,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    width: double.infinity,
                    child: ListTile(
                      title: Text(
                        "Produc Sould",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "21% of Products Sould",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Chip(
                        label: Text(
                          "4,500",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              LineChartSample2(),
              PieChartSample2(),
              Padding(
                padding: EdgeInsets.only(
                  left: kPadding / 2,
                  right: kPadding / 2,
                  top: kPadding / 2,
                  bottom: kPadding,
                ),
                child: Card(
                  color: purpleLight,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: List.generate(
                      _todos.length,
                      (index) => CheckboxListTile(
                          title: Text(_todos[index].name,
                              style: TextStyle(color: Colors.white)),
                          value: _todos[index].enable,
                          onChanged: (newValue) {
                            setState(() {
                              _todos[index].enable = newValue ?? true;
                            });
                          }),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
