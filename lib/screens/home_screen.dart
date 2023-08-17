import 'package:flutter/material.dart';
import 'package:trip_app_ui_flutter/components/promo_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4E3E3),
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Find Your',
                      style: TextStyle(fontSize: 18, color: Colors.black87)),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Inspiration',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFE4E3E3),
                          borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: 'Search you\'re looking for',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Promo Today',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCard('assets/images/one.jpg'),
                        promoCard('assets/images/two.jpg'),
                        promoCard('assets/images/three.jpg'),
                        promoCard('assets/images/four.jpg'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/three.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: const [
                                0.1,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.1)
                              ])),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
