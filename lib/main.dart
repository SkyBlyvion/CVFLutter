import 'package:flutter/material.dart';

void main() {
  runApp(const Curriculum());
}

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon CV en ligne",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Mon cv",
            style: TextStyle(
              letterSpacing: 4.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lopez",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            height: 2,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "Nicolas",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            height: 2,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "18/04/2000",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            height: 2,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/p1.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Expériences professionnelles",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text("Mes experiences"),
              const Text("Mes experiences"),
              const Text("Mes experiences"),
              const SizedBox(height: 16),
              const Text(
                "Formations",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text("Mes formations"),
              const Text("Mes formations"),
              const Text("Mes formations"),
              const SizedBox(height: 16),
              const Text(
                "Hobbies",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text("Escalade"),
              const Text("Gaming"),
              const Text("Tir en Stand de Tir"),
              const SizedBox(height: 16),
              // Use ListView to allow horizontal scrolling
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildImage("images/escalade.jpeg"),
                    const SizedBox(width: 8,),
                    _buildImage("images/gaming.jpeg"),
                    const SizedBox(width: 8,),
                    _buildImage("images/range.jpeg"),
                    const SizedBox(width: 8,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return SizedBox(
      width: 120,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            alignment: Alignment.topRight,
          ),
        ),
      ),
    );
  }
}