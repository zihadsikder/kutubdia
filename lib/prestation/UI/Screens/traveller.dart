import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutubdia/prestation/UI/Screens/spectacular_place.dart';

class TravellerScreen extends StatefulWidget {
  const TravellerScreen({super.key});

  @override
  State<TravellerScreen> createState() => _TravellerScreenState();
}

class _TravellerScreenState extends State<TravellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text(
          'Welcome to Our KUTUBDIA',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset(
                    'assets/ktd.jpeg',
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(
                    height: 4,
                  ),
                  Center(
                      child: Text(
                    '||সাগরকন্যা কুতুবদিয়া তে আপনাকে স্বাগতম||',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue.shade700),
                  )),
                  Text(
                    'আপনি চাইলে অনেকভাবে কুতুবদিয়া আসতে পারেন। তার মধ্যে তিনটি প্রধান মাধ্যম হল.....',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue.shade300),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    '১। যদি চট্টগ্রাম থেকে আসেন তাহলে প্রথমে বহদ্দারহাট নতুন চাদঁগা থানা আসতে হবে। ওখান থেকে সানলােইন/এস.আলম বাসে করে মগনামা আসতে হবে...',
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    '২। যদি ঢাকা থেকে আসেন তাহলে প্রথমে চট্টগ্রাম/কক্সবাজারগামী যেকোন বাসে উঠে চট্টগ্রাম/নতুন রাস্তার মাথা/চকরিয়া নামতে হবে।  ওখান থেকে সি.এন.জি করে মগনামা আসতে হবে...',
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    '৩। যদি কক্সবাজার থেকে আসেন তাহলে চকরিয়া/মগনামাগামী যেকোন বাসে করে আসতে হবে। চকরিয়া আসলে ওখান থেকে সি.এন.জি নিতে হবে...',
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'মগনামা হতে স্পীড বোট/ডেনিস বোট এ করে বড়ঘোপ ঘাট কিংবা দরবার ঘাটে কুতুবদিয়া আসতে পারবেন ....',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'একদিনের ভ্রমণ পরিকল্পনা ও খরচ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue.shade700),
                  ),
                  const Text(
                      'চট্রগ্রাম থেকে খুব সকালে রওনা দিলে বায়ু বিদ্যুৎ ও লাইট হাউস দেখে দিনের বেলায় ফিরে আসা যাবে। যাওয়া আসায় ৬-৭ ঘণ্টা লাগবে, বাকি সময় ঘুরে দেখতে পারবেন। বড়ঘোপ বাজার থেকে ৩০-৪০ টাকা রিক্সা ভাড়ায় কিংবা ৫-১০ টাকা টেম্পু ভাড়ায় বায়ু বিদ্যুৎ প্লান্টে যাওয়া যায়। বায়ু বিদ্যুৎ প্লান্ট দেখে রিক্সায় হাসপাতাল গেট এসে, হাসপাতাল গেইট থেকে সিএনজি কিংবা রিকশায় কিংবা জিপে করে দরবারের গেইটে যাওয়া যায়। ওখান থেকে কুতুবদিয়া লাইটহাউস দেখা যায়। সব দেখে শেষ স্পিড বোট ছাড়ার আগেই ঘাঁটে ফিরে আসতে হবে।'),
                  const SizedBox(height: 8),
                  Text(
                    'কোথায় থাকবেন',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue.shade700),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                      'পর্যটকদের থাকার জন্য কুতুবদিয়া দ্বীপের বড়ঘোপ বাজারে ‘হোটেল সমুদ্র বিলাস’ নামে একটি আবাসিক হোটেল চালু আছে। সমুদ্রের খুব কাছে হওয়ায় এই হোটেলে বসে সমুদ্র দেখা করা যায়। এখানে ৮০০ থেকে ১২০০ টাকায় বিভিন্ন ধরণের নন-এসি রুম পাওয়া যায়। যোগাযোগ করার জন্য ফোন করতে পারেন ,এছাড়া ক্যাম্পিং এর জন্যে আদর্শ কুতুবদিয়া দ্বীপ। নিরিবিলি সৈকতের কাছে ক্যাম্পিং করার জন্যে অনেকেই এই দ্বীপকে বেছে নেন। নিরাপত্তা নিয়ে কোন সংশয় নেই। তারপরেও প্রয়োজন মনে হলো স্থানীয় মানুষদের সাথে কথা বলে নিন।'),
                  const SizedBox(height: 8),
                  Text(
                    'কোথায় খাবেন',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue.shade700),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                      'হোটেল সমুদ্র বিলাসে এর পাশাপাশি ২য় তলায় বর্তমানে রয়েছে ‘বেলাভুমি’ নামের আধুনিক মানের চাইনিজ এবং সুস্বাদু ও ভালো মানের রেষ্টুরেন্ট। এছাড়া খুব ভালো কোন রেস্টুরেন্ট না থাকলেও কুতুবদিয়া দ্বীপের বাজারের স্থানীয় হোটেল গুলোতে শুঁটকি, ভর্তা, নানা ধরণের মাছ ও মাংস দিয়ে উদর পুর্তি করতে পারবেন। বড়ঘোপ বাজারের “নিউ মদিনা” কিংবা “ক্যাফে আলম” তুলনামূলক ভালো খাবার পাওয়া যায়।'),
                  const SizedBox(height: 8),
                  Text(
                    'ভ্রমণ টিপস',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue.shade700),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                      'কুতুবদিয়া দ্বীপে কোন বিদ্যুৎ ব্যবস্থা নেই, এখানে জেনারেটর ও সৌর বিদ্যুৎ দিয়ে প্রয়োজনীয় বিদ্যুতের চাহিদা মেটানো হয়। সাগরের জোয়ার-ভাটা নির্নয়ের কোনো ব্যবস্থাই নেই। তাই সাগরে নামতে হলে নিজ উদ্যোগে জোয়ার-ভাটার সময় জেনে নিতে হবে। অবশ্যই ভাটার সময় সাগরে নামা থেকে বিরত থাকুন। স্পিড বোট ও ইঞ্জিন নৌকায় দ্বীপ থেকে ছেড়ে আসার শেষ সময়টা আগেই জেনে রাখুন। সাধারণত সূর্যাস্ত পর্যন্ত স্পিড বোট ও ইঞ্জিন নৌকা চলাচল করে।'),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'দর্শনীয় স্থান',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.blue.shade700),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(() => const SpectacularPlace());
                          },
                          child: const Text(
                            'বিস্তারিত...',
                            style: TextStyle(color: Colors.black54),
                          ))
                    ],
                  ),
                  const Text('* বায়ুবিদ্যুৎ প্রকল্প (বায়ুকল)'),
                  const Text('* কুতুব শরীফ দরবার'),
                  const Text('* কুতুব আউলিয়ার মাজার'),
                  const Text('* বড়ঘোপ সমুদ্র সৈকত'),
                  const Text('* প্রাকৃতিক উপায়ে লবণ তৈরির মাঠ'),
                  const Text('* কুতুবদিয়া বাতিঘর'),
                  const Text('* মুক্তমঞ্চ'),
                  const Text('* কালারমার মসজিদ'),
                  const Text('* ফকিরা মসজিদ'),
                  const Text('* সিটিজেন পার্ক'),
                  const Text('* প্রাচীন দীঘির পাড় (বড়ঘোপ)'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
