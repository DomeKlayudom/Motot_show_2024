// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarCalculateUI extends StatefulWidget {
  const CarCalculateUI({super.key});

  @override
  State<CarCalculateUI> createState() => _CarCalculateUIState();
}

class _CarCalculateUIState extends State<CarCalculateUI> {
  TextEditingController carBahtCtrl = TextEditingController(text: "");
  TextEditingController flowerPerYearCtrl = TextEditingController(text: "");
  int downPaySelect = 10;

  showWarningMessage(context, msg) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('คำเตือน'),
          content: Text(msg),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  final List<String> _yearList = [
    '12 งวด (1 ปี)',
    '24 งวด (2 ปี)',
    '36 งวด (3 ปี)',
    '48 งวด (4 ปี)',
    '60 งวด (5 ปี)',
    '72 งวด (6 ปี)',
  ];
  double currentYear = 1;
  // final List<String> _yearList = [
  //   ['12 งวด (1 ปี)'][1],
  //   ['24 งวด (2 ปี)'][2],
  //   ['36 งวด (3 ปี)'][3],
  //   ['48 งวด (4 ปี)'][4],
  //   ['60 งวด (5 ปี)'][5],
  //   ['72 งวด (6 ปี)'][6],
  // ];
  //   final List<String> _yearList = [
  //   ['12 งวด (1 ปี)',1],
  //   ['24 งวด (2 ปี)',2],
  //   ['36 งวด (3 ปี)',3],
  //   ['48 งวด (4 ปี)',4],
  //   ['60 งวด (5 ปี)',5],
  //   ['72 งวด (6 ปี)',6],
  // ];

  String currentYearList = '12 งวด (1 ปี)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('_yearList'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Image.asset(
                    'assets/images/autoCare.jpg',
                    height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.05,
                right: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ราคารถ (บาท)',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextField(
                    controller: carBahtCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      hintStyle: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'เงินดาวน์(%)',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 10,
                        groupValue: downPaySelect,
                        onChanged: (onChanged) {
                          setState(() {
                            downPaySelect = onChanged!;
                          });
                        },
                      ),
                      Text('10%'),
                      Radio(
                        value: 20,
                        groupValue: downPaySelect,
                        onChanged: (onChanged) {
                          setState(() {
                            downPaySelect = onChanged!;
                          });
                        },
                      ),
                      Text('20%'),
                      Radio(
                          value: 25,
                          groupValue: downPaySelect,
                          onChanged: (onChanged) {
                            setState(() {
                              downPaySelect = onChanged!;
                            });
                          }),
                      Text('25%'),
                      Radio(
                          value: 30,
                          groupValue: downPaySelect,
                          onChanged: (onChanged) {
                            setState(() {
                              downPaySelect = onChanged!;
                            });
                          }),
                      Text('30%'),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('จำนวนปีที่ผ่อน'),
                  DropdownButton(
                    value: currentYearList,
                    items: _yearList
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    isExpanded: true,
                    onChanged: (onChanged) {
                      setState(
                        () {
                          currentYearList = onChanged!;
                          if (currentYearList == '12 งวด (1 ปี)') {
                            currentYear = 1;
                          } else if (currentYearList == '24 งวด (2 ปี)') {
                            currentYear = 2;
                          } else if (currentYearList == '36 งวด (3 ปี)') {
                            currentYear = 3;
                          } else if (currentYearList == '48 งวด (4 ปี)') {
                            currentYear = 4;
                          } else if (currentYearList == '60 งวด (5 ปี)') {
                            currentYear = 5;
                          } else if (currentYearList == '72 งวด (6 ปี)') {
                            currentYear = 6;
                          }
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('ดอกเบี้ย (%) ต่อไป'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextField(
                    controller: flowerPerYearCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      hintStyle: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text('ดอกเบี้ย (%) ต่อไป'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (carBahtCtrl.text.trim().length == 0) {
                          showWarningMessage(context, 'ใส่ราคาด้วย');
                        } else if (flowerPerYearCtrl.text.trim().length == 0) {
                          showWarningMessage(context, 'ใส่ดอกด้วย');
                        } else {
                          double carPrice =
                              double.parse(carBahtCtrl.text.trim());
                          double downPayPrice =
                              carPrice * (downPaySelect / 100);
                          double yodJard = carPrice - downPayPrice;
                          double totalFlower = currentYear *
                              double.parse(flowerPerYearCtrl.text.trim());
                          double payPerMonth =
                              (yodJard + totalFlower) / (currentYear * 12);

                          showWarningMessage(context, payPerMonth.toString());
                        }
                      },
                      child: Text('คำนวณค่างวดรถ'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
