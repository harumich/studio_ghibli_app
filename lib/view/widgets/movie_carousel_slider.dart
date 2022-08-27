import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MovieCarouselSlider extends StatefulWidget {
  const MovieCarouselSlider({Key? key, required this.images}) : super(key: key);
  final List<String> images;

  @override
  _MovieCarouselSliderState createState() => _MovieCarouselSliderState();
}

class _MovieCarouselSliderState extends State<MovieCarouselSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }
          ),
          items: widget.images.map(
            (String item) => CachedNetworkImage(imageUrl: item)
          ).toList()
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.map(
              (String item) {
                int index = widget.images.indexOf(item);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? const Color.fromRGBO(255, 255, 255, 0.9)
                        : const Color.fromRGBO(255, 255, 255, 0.4),
                  ),
                );
              }
          ).toList()
        ),
      ],
    );
  }
}

