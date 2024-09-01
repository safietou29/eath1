import 'package:flutter/material.dart';

import 'nouveau.dart';

class CodeVerification extends StatelessWidget {
  const CodeVerification({super.key});

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
                'Code de vérification',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Text(
            'Veuillez entrez le code de vérification',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(75, 100, 0, 0),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xFFBCBCBC)
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 100, 0, 0),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xFFBCBCBC)
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 100, 0, 0),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xFFBCBCBC)
                    )
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>Nouveau())
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
                  Text('Verifier',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('code non reçu?',
                  style: TextStyle(
                      color: Colors.grey[600]
                  ),
                ),
                SizedBox(width: 10,),
                Text('Renvoyez',
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
    );
  }
}