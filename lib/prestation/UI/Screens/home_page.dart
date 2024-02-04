import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutubdia/prestation/UI/Screens/about.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  final List<String> imageUrls = [
    'assets/21.jpg',
    'assets/88.jpg',
    'assets/10.jpg',
    'assets/77.jpg',
    'assets/20.jpg',
    'assets/3.jpg',
  ];

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
        )),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 4,),
            carouselSlider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(' About',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color:Colors.green),),
               IconButton(onPressed: (){
                 Get.to(const AboutScreen());
               }, icon: const Icon(Icons.arrow_forward_ios_sharp))
              ],
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6, // Change the itemCount as needed
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.local_police_outlined),
                          onPressed: () {},
                        ),
                        const Text('Police'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column get carouselSlider {
    return Column(
              children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                currentIndex.value = index;
              },
            ),
            items: imageUrls.map((imageUrls) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: AssetImage(imageUrls), fit: BoxFit.cover),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 6),
          ValueListenableBuilder(
              valueListenable: currentIndex,
              builder: (context, index, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < imageUrls.length; i++)
                      Container(
                        height: 12,
                        width: 12,
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: currentIndex.value == i
                                ? Colors.amber
                                : Colors.grey.shade400,
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                  ],
                );
              }),
          ]
      );
  }
}
