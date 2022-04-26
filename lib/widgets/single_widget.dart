import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import '../models/weather_locations.dart';

class SingleWidget extends StatelessWidget {
  final int index;

  SingleWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 140,
                    ),
                    Text(
                      locationList[index].city.toString(),
                      style: GoogleFonts.lato(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      locationList[index].dateTime.toString(),
                      style: GoogleFonts.lato(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationList[index].temperature.toString(),
                      style: GoogleFonts.lato(
                          fontSize: 85.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/moon.svg",
                          width: 34.0,
                          height: 34.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          locationList[index].weatherType.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 44.0),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white30,
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Wind",
                          style: GoogleFonts.lato(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          locationList[index].wind.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 14.0, color: Colors.white),
                        ),
                        Text(
                          "km/h",
                          style: GoogleFonts.lato(
                              fontSize: 14.0, color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 50,
                              height: 5,
                              color: Colors.white38,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              color: Colors.greenAccent,
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Rain',
                          style: GoogleFonts.lato(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          locationList[index].rain.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 14.0, color: Colors.white),
                        ),
                        Text(
                          '%',
                          style: GoogleFonts.lato(
                              fontSize: 14.0, color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 50,
                              height: 5,
                              color: Colors.white38,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              color: Colors.redAccent,
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Humidy',
                          style: GoogleFonts.lato(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          locationList[index].humidity.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 14.0, color: Colors.white),
                        ),
                        Text(
                          '%',
                          style: GoogleFonts.lato(
                              fontSize: 14.0, color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 50,
                              height: 5,
                              color: Colors.white38,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              color: Colors.redAccent,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
