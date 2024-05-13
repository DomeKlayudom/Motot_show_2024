import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:motor_show_2024_app/views/Helper.dart';

class HondaUI extends StatefulWidget {
  const HondaUI({super.key});

  @override
  State<HondaUI> createState() => _HondaUIState();
}

class _HondaUIState extends State<HondaUI> {
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
                        context, 'sedanAccord.jpg', 'Honda City', '599,000'),
                    cmHelper.listViewData(
                        context, 'sedanCity.jpg', 'Honda Civic', '879,000'),
                    cmHelper.listViewData(context, 'sedanHatchback.jpg',
                        'Honda Accord', '1,499,000'),
                    cmHelper.listViewData(context, 'sedanLegend.jpg',
                        'Honda Legend', '2,899,000'),
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
                    cmHelper.listViewData(
                        context, 'SUVHondaBR.jpg', 'Honda BR-V', '824,000'),
                    cmHelper.listViewData(
                        context, 'SUVHondaCRV.jpg', 'Honda CR-V', '1,419,000'),
                    cmHelper.listViewData(
                        context, 'SUVHondaHRV.jpg', 'Honda HR-V', '964,000'),
                    cmHelper.listViewData(
                        context, 'SUVHondaWRV.jpg', 'Honda WR-V', '779,000'),
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
                    cmHelper.listViewData(context, 'trunkHondaRidgeline.jpg',
                        'Honda Ridgeline', '1,100,000'),
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
                    cmHelper.listViewData(context, 'vanHondaOdyssey.jpg',
                        'Honda Odyssey', '2,490,000'),
                    cmHelper.listViewData(context, 'vanHondaStepwgn.jpg',
                        'Honda Stepwgn', '2,650,000'),
                    cmHelper.listViewData(context, 'vanHondaElysion.jpg',
                        'Honda Elysion', '3,190,000'),
                    cmHelper.listViewData(context, 'vanHondaFreed.jpg',
                        'Honda Freed', '1.990,000'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: cmHelper.myAppBar('Honda'),
    );
  }
}
