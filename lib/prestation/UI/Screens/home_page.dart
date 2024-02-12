import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutubdia/prestation/UI/Screens/about.dart';
import 'package:kutubdia/prestation/UI/Screens/spectacular_place.dart';
import 'package:kutubdia/prestation/UI/Screens/traveller.dart';
import 'package:kutubdia/prestation/UI/Widget/carusel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Center(
          child: Text(
            'My Home Land',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            MyCarouselSlider(),
            const SizedBox(height: 8.0),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    ' GUIDLINES...',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.to(const TravellerScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6, // Change the itemCount as needed
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return buildCard(
                          Icons.local_police_outlined, 'Police', () {});
                    case 1:
                      return buildCard(
                          Icons.cast_for_education, 'Education', () {});
                    case 2:
                      return buildCard(
                          Icons.local_hospital_outlined, 'Hospital', () {});
                    case 3:
                      return buildCard(Icons.info_outline, 'About', () {
                        Get.to(() => const AboutScreen());
                      });
                    case 4:
                      return buildCard(Icons.history, 'Spectacular Place', () {
                        Get.to(() => const SpectacularPlace());
                      });
                    case 5:
                      return buildCard(Icons.error_outline, 'Unknown', () {});
                    default:
                      return buildCard(Icons.error_outline, 'Unknown', () {});
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(IconData icon, String label, VoidCallback onPressed) {
    return Card(
      child: Column(
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
          ),
          Text(label),
        ],
      ),
    );
  }
}
