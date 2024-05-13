import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/Helper.dart';

class MitsubishiUI extends StatefulWidget {
  const MitsubishiUI({super.key});

  @override
  State<MitsubishiUI> createState() => _MitsubishiUIState();
}

class _MitsubishiUIState extends State<MitsubishiUI> {
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
                    cmHelper.listViewData(context, 'sedanMitsubishiSmart.jpg',
                        'Mitsubishi Attrage Smart CVT', '584,000'),
                    cmHelper.listViewData(context, 'sedanMitsubishiActive.jpg',
                        'Mitsubishi Attrage Active MT', '494,000'),
                    cmHelper.listViewData(
                        context,
                        'sedanMitsubishiRalliart.jpg',
                        'Mitsubishi Mirage RALLIART',
                        '537,000'),
                    cmHelper.listViewData(
                        context,
                        'sedanMitsubishiMirageSmart.jpg',
                        'Mitsubishi Mirage Smart CVT',
                        '579,000'),
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
                    cmHelper.listViewData(context, 'PPVMitsubishiPajero.jpg',
                        'Mitsubishit Pajero Sport', '1,299,000'),
                    cmHelper.listViewData(context, 'PPVMitsubishiTriton.jpg',
                        'Mitsubishi Triton', '849,000'),
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
                    cmHelper.listViewData(
                        context,
                        'truckMitsubishiTritonSingle.jpg',
                        'Mitsubishi Triton Single Cab',
                        '699,000'),
                    cmHelper.listViewData(
                        context,
                        'truckMitsubishiTritonMegaCab.jpg',
                        'Mitsubishi Triton Mega Cab',
                        '682,000'),
                    cmHelper.listViewData(
                        context,
                        'truckMitsubishiTritonMegaCabPlus.jpg',
                        'MitsubishiTriton Mega Cab Plus Prime',
                        '821,000'),
                    cmHelper.listViewData(
                        context,
                        'truckMitsubishiTritonDouble.jpg',
                        'Mitsubishi Triton Double Cab Ultra',
                        '1,228,000'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'VAN',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    cmHelper.listViewData(context, 'vanMitsubishiExpress.jpg',
                        'Mitsubishi Express', '2,409,000'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: cmHelper.myAppBar('Mitsubishi'),
    );
  }
}
