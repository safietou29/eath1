import 'package:eath1/reinitialisation.dart';
import 'package:flutter/material.dart';

import 'inscription.dart';

class EcranConnexion extends StatelessWidget {
  const EcranConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              //color: Colors.blue,
              //padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Center(
                child: Text(
                  'Connexion',
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
              height: 190,
              //color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                    style: TextStyle(
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 50,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Mot de passe',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Reinitialisation())
                      );
                    },
                    child: Container(
                      child: Text('Mot de passe oublié?',
                        style: TextStyle(
                          color: Colors.red[600],
                        ),
                      ),
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
            SizedBox(height: 15,),
            Text('Ou',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage('images/img.png',
                  ),
                  ),
                  Text('Se connecter avec google',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 180,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pas de compte?'),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>Inscription())
                    );
                  },
                  child: Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0xFF7DC243),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("S'inscrire",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
