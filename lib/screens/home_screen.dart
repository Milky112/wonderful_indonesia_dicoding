import 'package:flutter/material.dart';
import 'package:wonderful_indonesia/models/DestinationBundle.dart';
import 'package:wonderful_indonesia/size_config.dart';
import 'package:wonderful_indonesia/widgets/BestDestinations.dart';
import 'package:wonderful_indonesia/widgets/CityDestinations.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/travel_logo2.png"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 3),
            child: Text(
              'Indonesia\'s Choices',
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.06,
                fontWeight: FontWeight.bold,
                color: Colors.black26,
              ),
            ),
          ),
          CityDestinations(),
          SizedBox(height: SizeConfig.defaultSize * 2),
          BestDestinations(),
        ],
      ),
    );
  }
}
