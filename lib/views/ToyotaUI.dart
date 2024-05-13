import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/Helper.dart';

class ToyotaUI extends StatefulWidget {
  const ToyotaUI({super.key});

  @override
  State<ToyotaUI> createState() => _ToyotaUIState();
}

class _ToyotaUIState extends State<ToyotaUI> {
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
                    cmHelper.listViewData(context, 'sedanToyotaGRSupra.jpg',
                        'Toyota GR Supra', '5,199,000'),
                    cmHelper.listViewData(context, 'sedanToyotaGRYaris.jpg',
                        'Toyota-GR Yaris', '2,690,000'),
                    cmHelper.listViewData(context, 'sedanToyotaAltis.jpg',
                        'Toyota Altis HEV GR Sport', '1,129,000'),
                    cmHelper.listViewData(context, 'sedanToyotaCamry.jpg',
                        'Toyota Camry', '1,599,000'),
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
                    cmHelper.listViewData(context, 'SUVToyotaFortuner2.8.jpg',
                        'Toyota Fortuner 2.8 GR Sport', '1,969,000'),
                    cmHelper.listViewData(
                        context,
                        'SUVToyotaFortuner2.8Legender.jpg',
                        'Toyota Fortuner 2.8 Legender',
                        '1,904,000'),
                    cmHelper.listViewData(
                        context,
                        'SUVToyotaCorolla Cross 1.8.jpg',
                        'Toyota Corolla Cross 1.8 Sport Plus',
                        '999,000'),
                    cmHelper.listViewData(
                        context,
                        'SUVToyotaYarisCrossHevPremium.jpg',
                        'Toyota Yaris Cross Hev Premiun',
                        '849,000'),
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
                        'truckToyotaRevoStandard.jpg',
                        'Toyota Revo Standard 4X2',
                        '624,000'),
                    cmHelper.listViewData(context, 'truckToyotaHilux.jpg',
                        'Toyota Hiliux Champ 2.4', '562,000'),
                    cmHelper.listViewData(
                        context,
                        'truckToyotaRevoSmartCab.jpg',
                        'Toyota Revo Smart Cab 4X4',
                        '1,161,000'),
                    cmHelper.listViewData(
                        context,
                        'truckToyotaRevoDoubleCab.jpg',
                        'Toyota Revo Double Cab Z-Edition',
                        '744,000'),
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
                    cmHelper.listViewData(context, 'vanToyotaHiace2.8.jpg',
                        'Toyota Hiace 2.8 GL', '1,149,000'),
                    cmHelper.listViewData(context, 'vanToyotaMajesty2.8.jpg',
                        'Toyota Majesty 2.8 Premium', '1,899,000'),
                    cmHelper.listViewData(context, 'vanToyotaCommuter2.8MT.jpg',
                        'Toyota Commuter 2.8 MT', '1,339,000'),
                    cmHelper.listViewData(context, 'vanToyotaCommuter2.8AT.jpg',
                        'Toyota Commuter 2.8 AT', '1,369,000'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: cmHelper.myAppBar('Toyota'),
    );
  }
}
