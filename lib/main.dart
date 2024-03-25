import 'package:flutter/material.dart';

void main() {
  runApp(const Curriculum());
}

// Widget principal représentant le Curriculum
class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Configuration de l'application
      title: "Mon CV en ligne",
      debugShowCheckedModeBanner: false,
      // Configuration de la page d'accueil
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
              // Informations personnelles et image
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Informations personnelles (nom, prénom, date de naissance)
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
                  // Image
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
              // Expériences professionnelles
              const Text(
                "Expériences professionnelles",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text("Gendarmerie"),
              const Text("Programmation"),
              const Text("Mes experiences"),
              const SizedBox(height: 16),
              // Formations
              const Text(
                "Formations",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text("Bac STI2D SIN"),
              const Text("License nv6 Dev Web"),
              const Text("Mes formations"),
              const SizedBox(height: 16),
              // Hobbies
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
              // Liste des images (hobbies)
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

  // Fonction pour construire un widget Image à partir d'un chemin d'image
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
