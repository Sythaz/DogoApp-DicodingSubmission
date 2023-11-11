import 'package:anjing_dicoding/MainScreen.dart';
import 'package:anjing_dicoding/funFactPage.dart';
import 'package:anjing_dicoding/models/desc_anjing.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class DetailDesc extends StatelessWidget {
  const DetailDesc({super.key, required this.desc});
  final DescAnjing desc;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xFF3ADF8F),
        body: Stack(
          children: [
            Positioned(
              top: 338,
              child: Container(
                height: screenSize.height * 0.6,
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: Color(0xFFEAF6F0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            desc.name,
                            style: TextStyle(
                                color: Color(0xFF0F241A),
                                fontFamily: 'FreeSans',
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF1EB86E),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                desc.lifespan,
                                style: TextStyle(
                                    color: Color(0xFFEAF6F0),
                                    fontFamily: 'FreeSans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Text(
                                desc.description,
                                style: TextStyle(
                                  color: Color(0xFF0F241A),
                                  fontFamily: 'FreeSans',
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Flexible(
                              child: SizedBox(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB0F2D2)),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FunFact(desc: desc),
                            )),
                        child: Text(
                          "Fun fact about ${desc.name}",
                          style: TextStyle(
                            color: Color(0xFF1EB86E),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 75,
              left: 5,
              right: 5,
              child: Center(
                child: SimpleShadow(
                  opacity: 0.25,
                  offset: Offset(0, 5),
                  child: Image.asset(desc.image),
                ),
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
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 70.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF1EB86E),
          onPressed: () => Navigator.pop(
              context, MaterialPageRoute(builder: (context) => MainScreen())),
          child: const Icon(
            Icons.home,
            color: Color(0xFFEAF6F0),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
