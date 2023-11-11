import 'package:flutter/material.dart';
import 'package:anjing_dicoding/models/desc_anjing.dart';
import 'detailDesc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70)),
        ),
        backgroundColor: Color(0xFFEAF6F0),
        title: Center(
          child: Text(
            'DOGO',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF1EB86E),
              fontFamily: 'Splatch',
              fontSize: 18,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF3ADF8F),
      body: ResponsiveMobileAnjing(),
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
        onPressed: () => MainScreen(),
        child: const Icon(
          Icons.home,
          color: Color(0xFFEAF6F0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ResponsiveMobileAnjing extends StatefulWidget {
  const ResponsiveMobileAnjing({Key? key}) : super(key: key);

  @override
  State<ResponsiveMobileAnjing> createState() => _ResponsiveMobileAnjingState();
}

class _ResponsiveMobileAnjingState extends State<ResponsiveMobileAnjing> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 35, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Siapasih ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F241A),
                          fontFamily: 'FreeSans',
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'yang tidak suka dengan',
                            style: TextStyle(
                                color: Color(0xFF0F241A),
                                fontWeight: FontWeight.normal),
                          ),
                          TextSpan(text: '\nanjing?'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: screenSize.height * 0.6,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: descAnjingList.length,
                    itemBuilder: (context, index) {
                      final DescAnjing desc = descAnjingList[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailDesc(desc: desc),
                                ));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              SizedBox(
                                width: 315,
                                child: Card(
                                  color: Color(0xFFEAF6F0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 6,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              desc.name,
                                              style: TextStyle(
                                                  color: Color(0xFF0F241A),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'FreeSans'),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          color: Color(0xFF3ADF8F),
                                          thickness: 1.5,
                                        ),
                                        SizedBox(height: 10),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xFFEAF6F0),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            height: screenSize.height,
                                            width: screenSize.width,
                                            child: Image.asset(
                                              desc.image,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xFF3ADF8F),
                                          thickness: 1.5,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.explore,
                                                  color: Color(0xFF1EB86E),
                                                  size: 23,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  'Jenis: ',
                                                  style: TextStyle(
                                                      color: Color(0xFF0F241A),
                                                      fontFamily: 'FreeSans'),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(desc.jenis,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF0F241A),
                                                        fontFamily:
                                                            'FreeSans')),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_pin,
                                                  color: Color(0xFF1EB86E),
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  'Asal: ',
                                                  style: TextStyle(
                                                    color: Color(0xFF0F241A),
                                                    fontFamily: 'FreeSans',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(desc.asal,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF0F241A),
                                                        fontFamily:
                                                            'FreeSans')),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
