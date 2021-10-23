import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart'as color; 
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor:color.AppColor.homePageBackground ,
  body:Container (
    padding: const EdgeInsets.only(
      top: 70,
      left: 30,
      right: 30, //Icons ke liye
      ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              "Tan",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff7C0A02),
                fontWeight: FontWeight.w700
              ),
              ),
              Text(
              "zenitsu",
              style: TextStyle(
                fontSize: 30,
                color: Colors.amber,
                fontWeight: FontWeight.w700
              ),
              ),
              Expanded(child:Container()),//icons will shift to right
              Icon(Icons.arrow_back_ios_new,
              size: 20,
              color: color.AppColor.homePageIcons,
              
              ),
              SizedBox(width:10,),
          Icon(Icons.calendar_today_outlined,
          size: 20,
          color: color.AppColor.homePageIcons,
          ),
          SizedBox(width:15,),
           Icon(Icons.arrow_forward_ios,
              size: 20,
              color: color.AppColor.homePageIcons,
              
              ),
          ],
        ),
      SizedBox(height: 30,),
      Row(
        children: [
           Text(
              "Your Playlist",
              style: TextStyle(
                fontSize: 20,
                color: color.AppColor.homePageSubtitle,
                fontWeight: FontWeight.w700
              ),
              ),
              Expanded(child: Container()),
              Text(
              "Details",
              style: TextStyle(
                fontSize: 20,
                color: color.AppColor.homePageDetail,
                
              ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.arrow_forward,
              size: 20,
              color: color.AppColor.homePageIcons,
              ),
        ],
      ),

      SizedBox(height: 20,),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
            color.AppColor.gradientFirst,
            color.AppColor.gradientSecond,
            ],
            begin: Alignment.bottomLeft,
            end:Alignment.centerRight,
            ),

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(80),
            bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(5,10), //Spread left nd right
              blurRadius: 20,
              color: color.AppColor.gradientSecond.withOpacity(0.2),
            )
          ]

        ),
      child: Container(
        padding: const EdgeInsets.only(left: 20,top: 20,right: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //used for columns to make horizontal
          children: [
            Row(
              children: [
                Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.w400 ,
                   
                    color: color.AppColor.homePageContainerTextSmall,
                  ),
                ),
              
            Text(
              " Episode",
              style: TextStyle(
                fontSize: 16,
                fontWeight:FontWeight.w600 ,
                color: Colors.red,
              ),
            ),
            ],
            ),
          SizedBox(height: 5,),
  
  Text(
              "Zenitsu loves",
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),

            SizedBox(height: 5,),
  
  Text(
              "Nezuko Chan",
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            SizedBox(height: 25,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               
                Icon(Icons.timer,size: 20,color: color.AppColor.homePageContainerTextSmall,),
               SizedBox(width: 10,),
               Text(
              "60 min",
              style: TextStyle(
                fontSize: 14,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            Expanded(child: Container()),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                    color: color.AppColor.gradientFirst,
                    blurRadius: 15,
                    offset: Offset(4,2)
                  )
                ]
              ),
              child: Icon(Icons.play_circle_fill,
              color: Colors.white,size: 60,),
            ),
            
              ],
              
            ),

          

            
        ],),
      ),     
      )

    
      
      ],
    ),
  )

    );
  }
}