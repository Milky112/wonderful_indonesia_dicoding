import 'package:flutter/material.dart';
import 'package:wonderful_indonesia/models/DestinationBundle.dart';
import 'package:wonderful_indonesia/screens/place_detail_screen.dart';
import 'package:wonderful_indonesia/size_config.dart';

class ListofPlace extends StatelessWidget {
  const ListofPlace(
      {Key? key, required this.listdestinations, required this.CityName})
      : super(key: key);

  final List<DestinationBundle> listdestinations;
  final String CityName;

  String PrintStar(int star) {
    String Stars = "";
    for (var i = 0; i < star; i++) {
      Stars += "⭐ ";
    }
    return Stars;
  }

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
          CityName,
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: listdestinations.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print(listdestinations[index].title);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPlace(
                  detailDestinations: listdestinations[index],
                );
              }));
            },
            child: Card(
              child: Container(
                height: SizeConfig.defaultSize * 10,
                width: double.infinity,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: SizeConfig.defaultSize * 12,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(
                                  listdestinations[index].imageSrc[0]),
                              height: SizeConfig.defaultSize * 10,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: SizeConfig.defaultSize),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listdestinations[index].title,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22),
                              ),
                              SizedBox(height: SizeConfig.defaultSize * 0.5),
                              Row(
                                children: [
                                  Icon(Icons.place),
                                  Text(
                                    listdestinations[index].address,
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  ),
                                ],
                              ),
                              SizedBox(height: SizeConfig.defaultSize * 0.5),
                              Text(
                                PrintStar(listdestinations[index].rating),
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: SizeConfig.screenWidth * 0.7,
                      top: SizeConfig.defaultSize * 1.5,
                      child: Container(
                        width: 120,
                        child: Center(
                          child: Text(
                            '8\n Room',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
