import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide Bar'),
        centerTitle: true,
      ),

      body: CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/cpc-logo.jpg'),
                )
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/cpc-logo.jpg'),
                  )
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/cpc-logo.jpg'),
                  )
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/cpc-logo.jpg'),
                  )
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/cpc-logo.jpg'),
                  )
              ),
            ),

          ],
          options: CarouselOptions(
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            height: 200,
            aspectRatio: 16/9,
            enlargeCenterPage: true,
            autoPlayAnimationDuration: Duration(seconds: 3)
          )
      ),
    );
  }
}
