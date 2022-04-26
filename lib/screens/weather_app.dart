import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/single_widget.dart';
import '../models/weather_locations.dart';
import '../widgets/slider_dot.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import '../widgets/buildin_transform.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WeatherApp();
  }
}

class _WeatherApp extends State<WeatherApp> {
  int _currentPage = 0;
  String bgImg;

  _onChangePage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[_currentPage].weatherType == 'Sunny') {
      bgImg = 'assets/sunny.jpg';
    } else if (locationList[_currentPage].weatherType == 'Night') {
      bgImg = 'assets/night.jpg';
    } else if (locationList[_currentPage].weatherType == 'Rainy') {
      bgImg = 'assets/rainy.jpg';
    } else if (locationList[_currentPage].weatherType == 'Cloudy') {
      bgImg = 'assets/cloudy.jpeg';
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.search,
          size: 30.0,
          color: Colors.white,
        ),
        actions: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: GestureDetector(
                onTap: () {
                  print("Menu Clicked");
                },
                child: SvgPicture.asset(
                  'assets/menu.svg',
                  height: 30,
                  width: 30,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            bgImg,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.only(top: 140.0, left: 15.0),
            child: Row(
              children: [
                for (int i = 0; i < locationList.length; i++)
                  if (i == _currentPage) SliderDot(true) else SliderDot(false)
              ],
            ),
          ),
          TransformerPageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: _onChangePage,
              transformer: ScaleAndFadeTransformer(),
              viewportFraction: 0.8,
              itemCount: locationList.length,
              itemBuilder: (ctx, i) => SingleWidget(i))
        ],
      )),
    );
  }
}
