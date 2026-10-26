import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Store the rating score (1 to 5)
  int rating = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 350,
              padding: const EdgeInsets.all(16),
              color: const Color(0xFFFAF2F9),
              child: Column(
                children: [
                  // Image loaded from local assets folder
                  Image.asset(
                    'assets/pavlova.png',
                  ),
                  const SizedBox(height: 16),

                  // Title
                  const Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Description
                  const Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),

                  // Rating Stars
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Star 1
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            rating = 1;
                          });
                        },
                        child: Icon(
                          rating >= 1 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                        ),
                      ),
                      // Star 2
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            rating = 2;
                          });
                        },
                        child: Icon(
                          rating >= 2 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                        ),
                      ),
                      // Star 3
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            rating = 3;
                          });
                        },
                        child: Icon(
                          rating >= 3 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                        ),
                      ),
                      // Star 4
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            rating = 4;
                          });
                        },
                        child: Icon(
                          rating >= 4 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                        ),
                      ),
                      // Star 5
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            rating = 5;
                          });
                        },
                        child: Icon(
                          rating >= 5 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '90 Reviews',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Info Icons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Prep
                      Column(
                        children: const [
                          Icon(Icons.timer, color: Colors.amber),
                          Text('PREP', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('25 mins'),
                        ],
                      ),
                      // Cook
                      Column(
                        children: const [
                          Icon(Icons.restaurant, color: Colors.amber),
                          Text('COOK', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('1 hour'),
                        ],
                      ),
                      // Feeds
                      Column(
                        children: const [
                          Icon(Icons.people, color: Colors.amber),
                          Text('FEEDS', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('4-6 people'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}