import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wonderful_indonesia/models/DestinationBundle.dart';
import 'package:wonderful_indonesia/size_config.dart';

class DetailPlace extends StatelessWidget {
  const DetailPlace({Key? key, required this.detailDestinations})
      : super(key: key);

  final DestinationBundle detailDestinations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhotoShow(context),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                detailDestinations.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          print('Book Now');
        },
        child: Container(
          height: SizeConfig.defaultSize * 5,
          color: Colors.lightBlue,
          child: Center(
            child: Text(
              'Book Now',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container PhotoShow(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.5,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: SizeConfig.screenWidth),
            items: detailDestinations.imageSrc.map((img) {
              return Builder(builder: (BuildContext context) {
                return Container(
                    width: SizeConfig.screenWidth,
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                      ),
                    ));
              });
            }).toList(),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
