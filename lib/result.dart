import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {

  final Function reset;
  final int resultScore;

   Result( this.reset,this.resultScore);

   String  get resultPhrase{
     String resultText;

     if(resultScore >= 70) {
       resultText = 'You are awesome !';
     }
     else if(resultScore >= 40)
       {
         resultText = "Pretty likable!";
       }else
         {
       resultText = 'You are so bad!';
         }
     return resultText;
   }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Done!',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: isSwitched == false ? Colors.black : Colors.white),),
          Text('Total Score = $resultScore',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: isSwitched == false ? Colors.black : Colors.white),),
          Text(
           '$resultPhrase',
            style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: isSwitched == false ? Colors.black : Colors.white),
          ),
          TextButton(
              child: Text('Restart The App',style: TextStyle(fontSize: 35,color: Colors.blue),),
              onPressed: reset

          ),
        ],
      ),
    );
  }
}
