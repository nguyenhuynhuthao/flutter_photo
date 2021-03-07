import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:PhoTo/screens/details/details_images_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 5,
        top: 40,
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/chat.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsImagesScreen(),
                ),
              );
            },
          ),
          Spacer(),
          Text(
            'GooglePhotos',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Spacer(),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsImagesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
