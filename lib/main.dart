import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( BMI_Calculator());
}

class BMI_Calculator extends StatefulWidget{
  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {
  int Height=155;
  int Age=15;
  int Weight=60;
  double BMI=0;
  void CalcBMI(){
    BMI = Weight/pow(Height/100, 2);
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Color(0xff2C284D),
       body: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Padding(
             padding: EdgeInsets.only(top: 80,left: 20),
             child: Text(
                 "BMI Calculator",
               style: TextStyle(
                 color:Color(0xffE5E5E8),
                 fontSize: 40
               ),
             ),
           ),
           Padding(
             padding:  EdgeInsets.all(20),
             child: Card(
               color: Color(0xff322C5A),
               child: Column(
                 children: [
                   SizedBox(height: 15,),
                   Text(
                       "HEIGHT",
                     style: TextStyle(
                       color: Color(0xff93919B),
                       fontSize: 35
                     ),
                   ),
                   SizedBox(height: 15,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         Height.toString(),
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 40
                         ),
                       ),
                       SizedBox(width: 10,),
                       Text(
                           "cm",
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 28))
                     ],
                   ),
                   
                   SizedBox(height: 5,),
                   Slider(
                     min: 0,
                       max: 300 ,
                       activeColor: Color(0XFFD80F67),
                       inactiveColor: Colors.white,
                       value: Height.toDouble(),
                       onChanged:(value){
                       setState(() {
                         Height = value.toInt();
                       });
                       }
                       ),
                   SizedBox(height: 5,),

                 ],
               ),
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Card(
                 color: Color(0xff322C5A),
                 child: Padding(
                   padding: EdgeInsets.only(right: 39,left: 39,bottom: 20,top: 15),
                   child: Column(
                     children: [
                       Text(
                           "AGE",
                         style: TextStyle(
                             color: Color(0xff93919B),
                             fontSize: 35
                         ),
                       ),
                       SizedBox(height: 10,),

                       Text(
                         Age.toString(),
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 35
                         ),
                       ),
                       SizedBox(height: 20,),
                       Row(
                         children: [
                           InkWell(
                             child: CircleAvatar(
                               backgroundColor:Color(0xff4C4588),
                               child: Icon(
                                 Icons.remove,
                                 color: Colors.white,
                               ),
                             ),
                             onTap: (){
                               setState(() {
                                 Age--;
                               });
                             },
                           ),
                           SizedBox(width:20,),
                           InkWell(
                             child: CircleAvatar(
                               backgroundColor:Color(0xff4C4588),
                               child: Icon(
                                 Icons.add,
                                 color: Colors.white,
                               ),
                             ),
                             onTap: (){
                               setState(() {
                                 Age++;
                               });
                             },
                           )
                         ],
                       )
                     ],
                   ),
                 ),

               ),
               Card(
                 color: Color(0xff322C5A),
                 child: Padding(
                   padding: EdgeInsets.only(right: 24,left: 24,bottom: 20,top: 15),
                   child: Column(
                     children: [
                       Text(
                         "WEIGHT",
                         style: TextStyle(
                             color: Color(0xff93919B),
                             fontSize: 35
                         ),
                       ),
                       SizedBox(height: 10,),

                       Row(
                         children: [
                           Text(
                             Weight.toString(),
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 35
                             ),
                           ),
                           SizedBox(width: 10,),
                           Text(
                             "kg",
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 28)
                           )
                         ],
                       ),
                       SizedBox(height: 20,),
                       Row(
                         children: [
                           InkWell(
                             child: CircleAvatar(
                               backgroundColor:Color(0xff4C4588),
                               child: Icon(
                                 Icons.remove,
                                 color: Colors.white,
                               ),
                             ),
                             onTap: (){
                               setState(() {
                                 Weight--;
                               });
                             },
                           ),
                           SizedBox(width:20,),
                           InkWell(
                             child: CircleAvatar(
                               backgroundColor:Color(0xff4C4588),
                               child: Icon(
                                 Icons.add,
                                 color: Colors.white,
                               ),
                             ),
                             onTap: (){
                               setState(() {
                                 Weight++;
                               });
                             },
                           )
                         ],
                       )
                     ],
                   ),
                 ),
               ),
             ],
           ),
           SizedBox(height: 30,),

           ElevatedButton(
               onPressed: (){
                 setState(() {
                   CalcBMI();
                 });
               },
               style: ElevatedButton.styleFrom(
                 primary: Color(0xffDC0263),
                 minimumSize: Size(180, 60)
               ),
               child: Text(
                 "Calculate",
                 style: TextStyle(
                   fontSize: 30
                 ),
               )),
           SizedBox(height: 25,),
           Text(
             "YOUR BMI ",
             style: TextStyle(
               letterSpacing: 3,
                 color: Color(0xff93919B),
                 fontSize: 30
             ),
           ),
           SizedBox(height: 15,),

           Text(
             BMI.toStringAsFixed(2) ,
             style: TextStyle(
                 letterSpacing: 3,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 35
             ),
           ),


         ],
       ),
     ),
   );
  }
}