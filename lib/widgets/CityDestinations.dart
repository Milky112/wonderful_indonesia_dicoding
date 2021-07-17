import 'package:flutter/material.dart';
import 'package:wonderful_indonesia/models/DestinationBundle.dart';

import '../size_config.dart';

class CityDestinations extends StatelessWidget {
  const CityDestinations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Travelling',
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 2.2,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('See All for Destinations');
                },
                child: Text(
                  'see all',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.defaultSize),
        Container(
          height: SizeConfig.defaultSize * 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cityBundle.length,
            itemBuilder: (BuildContext context, int index) {
              CityBundle cityBundles = cityBundle[index];
              return GestureDetector(
                onTap: () {
                  print(cityBundles.id);
                },
                child: Container(
                  margin: EdgeInsets.all(SizeConfig.defaultSize),
                  width: SizeConfig.defaultSize * 21,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: SizeConfig.defaultSize * 12,
                          width: SizeConfig.defaultSize * 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${cityBundles.places} Destinations',
                                  style: TextStyle(
                                    fontSize: SizeConfig.defaultSize * 2,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.place),
                                    SizedBox(width: SizeConfig.defaultSize),
                                    Text(cityBundles.address),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                height: SizeConfig.defaultSize * 19,
                                width: SizeConfig.defaultSize * 19,
                                image: AssetImage(cityBundles.imageSrc),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: 10,
                              bottom: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cityBundles.title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.2),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
