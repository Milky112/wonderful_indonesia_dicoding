import 'package:flutter/material.dart';
import 'package:wonderful_indonesia/models/DestinationBundle.dart';
import 'package:wonderful_indonesia/screens/place_detail_screen.dart';
import 'package:wonderful_indonesia/screens/place_list_screen.dart';

import '../size_config.dart';
import 'DestinationsList.dart';

class BestDestinations extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize),
          child: Text(
            'Highest Rating Place',
            style: TextStyle(
              fontSize: SizeConfig.defaultSize * 2.2,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              letterSpacing: 1.5,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.defaultSize),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: SizeConfig.defaultSize * 55,
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.vertical,
              itemCount: destinationsBestPlaces.length,
              itemBuilder: (BuildContext context, int index) {
                DestinationBundle Bestdestinations =
                    destinationsBestPlaces[index];
                return GestureDetector(
                  onTap: () {
                    print(Bestdestinations.id);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPlace(
                        detailDestinations: Bestdestinations,
                      );
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.defaultSize * 2,
                        vertical: SizeConfig.defaultSize),
                    width: SizeConfig.screenWidth * 0.5,
                    height: SizeConfig.defaultSize * 20,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image(
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: SizeConfig.defaultSize * 15,
                                      image: AssetImage(
                                          Bestdestinations.imageSrc[0]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: SizeConfig.defaultSize * 5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '${Bestdestinations.title}',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '${Bestdestinations.address}',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black26),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${Bestdestinations.rating} ⭐',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
