import 'package:flutter/material.dart';
import 'package:wonderful_indonesia/models/DestinationBundle.dart';
import 'package:wonderful_indonesia/screens/place_list_screen.dart';
import 'package:wonderful_indonesia/size_config.dart';

class CityList extends StatefulWidget {
  const CityList({Key? key}) : super(key: key);

  @override
  _CityListState createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'List of City',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Scrollbar(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 30,
            childAspectRatio: 0.85,
            children: allCityBundle.map((cityAll) {
              return GestureDetector(
                onTap: () {
                  print(cityAll.title);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ListofPlace(
                        listdestinations: cityAll.destinations,
                        CityName: cityAll.title);
                  }));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: SizeConfig.defaultSize * 15,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image(
                              image: AssetImage(cityAll.imageSrc),
                              height: SizeConfig.defaultSize * 19,
                              width: SizeConfig.defaultSize * 19,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              cityAll.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: SizeConfig.defaultSize * 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${cityAll.places} destinations',
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
                                Text(
                                  cityAll.address,
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
