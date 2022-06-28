import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Wisdom(),
  ));
}

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int i=0;
  List qoute=["The purpose of our lives is to be happy.",
  "Life is what happens when you’re busy making other plans.",
  "Get busy living or get busy dying.",
 "You only live once, but if you do it right, once is enough.",
  "Many of life’s failures are people who did not realize how close they were to success when they gave up.",
  "If you want to live a happy life, tie it to a goal, not to people or things.",
  "Never let the fear of striking out keep you from playing the game.",
  "Money and success don’t change people; they merely amplify what is already there.",
  "Not how long, but how well you have lived is the main thing.",
  "If life were predictable it would cease to be life, and be without flavor.",
  "In order to write about life first you must live it.",
  "The big lesson in life, baby, is never be scared of anyone or anything.",
  "Curiosity about life in all of its aspects, I think, is still the secret of great creative people."];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Expanded(
              child: Center(
                child: Container(
                  width: 400,
                  height: 200,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text(qoute[(i % qoute.length)],
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                  ),
                ),
              ),
            ),
            Divider(thickness: 2.6,),
            //Padding(padding: const EdgeInsets.only(top: 30)),

           Padding(
             padding: const EdgeInsets.only(top: 30.0),
             child: ElevatedButton.icon(
               style: ElevatedButton.styleFrom(
                 primary: Colors.teal
               ),
                 onPressed: _show,
                 icon: Icon(Icons.batch_prediction_outlined,size: 15,color: Colors.tealAccent,),
                 label:Text("PRESS!!",style: TextStyle(
               color: Colors.tealAccent
             ),),
             ),
           ),
            Spacer()
          ],
        ),
      ),
    );
  }
  void _show() {
    setState(() {
      // if(i<12)
      // i++;
      // else
      //   i=0;

      i++;
    });

  }
}



