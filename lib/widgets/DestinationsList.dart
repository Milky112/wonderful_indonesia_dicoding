import 'package:flutter/material.dart';
import 'package:wonderful_indonesia/models/DestinationBundle.dart';
import 'package:wonderful_indonesia/size_config.dart';

class DestinationList extends StatelessWidget {
  const DestinationList({
    Key? key,
    required this.Bestdestinations,
  }) : super(key: key);

  final DestinationBundle Bestdestinations;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(Bestdestinations.id);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize),
        width: SizeConfig.screenWidth * 0.5,
        height: SizeConfig.defaultSize * 15,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image(
                          height: SizeConfig.defaultSize * 15,
                          image: AssetImage(Bestdestinations.imageSrc[0]),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.defaultSize * 15,
                  width: SizeConfig.defaultSize * 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${Bestdestinations.title}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Text(
                          '${Bestdestinations.rating} ⭐',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
