import 'package:flutter/material.dart';
import 'package:anjing_dicoding/models/desc_anjing.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simple_shadow/simple_shadow.dart';

class FunFact extends StatelessWidget {
  const FunFact({super.key, required this.desc});
  final DescAnjing desc;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFF3ADF8F),
      body: Stack(children: [
        Center(
          child: CarouselSlider.builder(
            itemCount: desc.fact.length,
            options: CarouselOptions(
              height: screenSize.height,
              viewportFraction: 0.35,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
              autoPlay: true,
            ),
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: screenSize.height * 0.3,
                  child: Card(
                    elevation: 10,
                    color: Color(0xFFEAF6F0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Color(0xFF1EB86E), width: 2.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '#${index + 1}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1EB86E)),
                              ),
                              BookmarkButton(),
                            ],
                          ),
                          Divider(),
                          Text(
                            desc.fact[index],
                            style: TextStyle(
                              color: Color(0xFF0F241A).withOpacity(0.6),
                              fontFamily: 'FreeSans',
                              fontSize: 16,
                            ),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SentimentButton(),
                              ThumbUpButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 20,
          top: 60,
          child: SimpleShadow(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFFEAF6F0),
                size: 35,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ]),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 60.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF1EB86E),
        onPressed: () => Navigator.popUntil(
            context, ModalRoute.withName(Navigator.defaultRouteName)),
        child: const Icon(
          Icons.home,
          color: Color(0xFFEAF6F0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Color(0xFF1EB86E),
      splashRadius: 25,
      icon: Icon(
        isBookmark ? Icons.bookmark : Icons.bookmark_border_outlined,
        color: Color(0xFF1EB86E),
      ),
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
    );
  }
}

class SentimentButton extends StatefulWidget {
  const SentimentButton({super.key});

  @override
  State<SentimentButton> createState() => SentimentButtonState();
}

class SentimentButtonState extends State<SentimentButton> {
  bool isSentiment = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Color(0xFF1EB86E),
      splashRadius: 25,
      icon: Icon(
        isSentiment ? Icons.sentiment_very_satisfied : Icons.sentiment_neutral,
        color: Color(0xFF1EB86E),
      ),
      onPressed: () {
        setState(() {
          isSentiment = !isSentiment;
        });
      },
    );
  }
}

class ThumbUpButton extends StatefulWidget {
  const ThumbUpButton({super.key});

  @override
  State<ThumbUpButton> createState() => ThumbUpButtonState();
}

class ThumbUpButtonState extends State<ThumbUpButton> {
  bool isThumbUp = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Color(0xFF1EB86E),
      splashRadius: 25,
      icon: Icon(
        isThumbUp ? Icons.thumb_up : Icons.thumb_up_outlined,
        color: Color(0xFF1EB86E),
      ),
      onPressed: () {
        setState(() {
          isThumbUp = !isThumbUp;
        });
      },
    );
  }
}
