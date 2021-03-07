import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:PhoTo/screens/details/details_images_screen.dart';
import 'package:PhoTo/screens/details/details_search_screen.dart';
import 'package:PhoTo/screens/details/details_library_screen.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 5,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: Colors.black,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/image_chuyen.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsImagesScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsSearchScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/library.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsLibraryScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
