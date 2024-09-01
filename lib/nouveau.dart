import 'package:eath1/validation.dart';
import 'package:flutter/material.dart';

class Nouveau extends StatelessWidget {
  const Nouveau({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            //color: Colors.blue,
            //padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Center(
              child: Text(
                'Nouveau mot de passe',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Text(
            'Veuillez entrez votre nouveau mot de passe',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          SizedBox(height: 90,),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nouveau mot de passe',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Confirmer mot de passe',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 300,),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>Validation())
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFF7DC243),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Confirmer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}