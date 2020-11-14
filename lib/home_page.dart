import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('assets/1.jpg');
  AssetImage two = AssetImage('assets/2.jpg');
  AssetImage three = AssetImage('assets/3.jpg');
  AssetImage four = AssetImage('assets/4.jpg');
  AssetImage five = AssetImage('assets/5.jpg');
  AssetImage six = AssetImage('assets/6.jpg');
  int diceimage;
  int diceimage2;
  
  @override
  void initState(){
    super.initState();
    
        setState(() {
          diceimage=1;
          diceimage2=2;
        });
      }
      
      void rollDice() {
        int random= (Random().nextInt(6)) + 1;
        int random2= (Random().nextInt(6)) + 1;
        setState(() {
          diceimage = random;
          diceimage2=random2;
          print(diceimage);
          print(diceimage2);
        });
    
      }
      
    
      @override
      // ignore: unused_element
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
          title: Text('Dice Game'),
          
          ),
          body: Container(
              decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage("assets/newbackground.jpg"),
                    fit: BoxFit.cover ),
                 ),
              child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, 
                 children: <Widget>[
    
                    Image.asset('assets/logo.png',
                                    width: 400,
                                    height: 400,
                                   ),
    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                      Image.asset('assets/$diceimage.jpg',
                                    width: 190,
                                    height: 190,
                                   ),
                            Image.asset('assets/$diceimage2.jpg',
                                    width: 190,
                                    height: 190,
                       ),
                       
                        ],
                     ),
                    
                    Spacer(),
                    
    
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: EdgeInsets.only(top: 70, bottom: 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FlatButton(
                        child: Text( 'Roll!',
                          style: TextStyle( 
                            fontFamily: 'Lobster', 
                            fontSize: 19,
                            ),),
                        color: Colors.lightBlueAccent,
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        onPressed: (){
                          rollDice();
                           },
                        
                      ),
                  ),
                  )
                  ],
            ),
          ),
        ),
        );
      }
      }
    




  