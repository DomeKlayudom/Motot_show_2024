import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/Helper.dart';

class MazdaUI extends StatefulWidget {
  const MazdaUI({super.key});

  @override
  State<MazdaUI> createState() => _MazdaUIState();
}

class _MazdaUIState extends State<MazdaUI> {
  CMHelper cmHelper = CMHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'รถเก๋ง',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    cmHelper.listViewData(
                        context, 'sedanMazda2.jpg', 'Mazda 2', '599,000'),
                    cmHelper.listViewData(
                        context, 'sedanMazda3.jpg', 'Mazda 3', '979,000'),
                    cmHelper.listViewData(context, 'sedanMazda MX-5.jpg',
                        'Mazda MX-5', '3,029,000'),
                    cmHelper.listViewData(context, 'sedanMazda3 Carbon.jpg',
                        'Mazda 3 Carbon 2022', '1,210,000'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'SUV & PPV',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    cmHelper.listViewData(context, 'SUVMazda CX-3.jpg',
                        'Mazda CX-3 2.0', '770,000'),
                    cmHelper.listViewData(context, 'SUVMazda CX-5.jpg',
                        'Mazda CX-5', '1,859,000'),
                    cmHelper.listViewData(context, 'SUVMazda CX-8.jpg',
                        'Mazda CX-8', '1,549,000'),
                    cmHelper.listViewData(context, 'SUVMazda CX-30.jpg',
                        'Mazda CX-30', '1,211,000'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'กระบะ',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    cmHelper.listViewData(context, 'truckMazda BT-50.jpg',
                        'Mazda BT-50 Cab', '752,000'),
                    cmHelper.listViewData(
                        context,
                        'truckMazda BT-50 Double Cab.jpg',
                        'Mazda BT-50 Double Cab',
                        '1,272,000'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
      appBar: cmHelper.myAppBar('Mazda'),
    );
  }
}
