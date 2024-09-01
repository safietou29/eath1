import 'package:flutter/material.dart';

class Inscription extends StatelessWidget {
  const Inscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              //color: Colors.blue,
              //padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Text(
                  'Inscription',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 520,
              //color: Colors.red,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Nom Complet',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Age(ans)',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Taille(cm)',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Poids(Kg)',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Sexe(M/F)',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFF7DC243),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Se connecter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('compte existant?',
                    style: TextStyle(
                        color: Colors.grey[600]
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Se connecter',
                    style: TextStyle(
                        color: Color(0xFF7DC243),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}