import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
runApp(MaterialApp(home: youtube(),debugShowCheckedModeBanner: false,));
}
class youtube extends StatefulWidget {
  const youtube({super.key});

  @override
  State<youtube> createState() => _youtubeState();
}

class _youtubeState extends State<youtube> {
  Icon ovoz = Icon(Icons.volume_up);
  Color like = Colors.black;
  bool liked = false;
  bool holat = true;
  bool holat2 = false;
  more(){
    if(holat2 == false){
      return Container(
        width: 32,
        height: 32,
        child: MaterialButton(
          enableFeedback: false,
            onPressed: (){
              if(holat2 == false){
                setState(() {
                  holat2 = true;
                });
              } else if(holat2 == true){
                setState(() {
                  holat2 = false;
                });
              }
            },
          child: Icon(Icons.more_horiz),
        ),
      );
    } else if(holat2 == true){
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.save),
          Icon(Icons.add_box_outlined),
          Container(
            width: 32,
            height: 32,
            child: MaterialButton(
              onPressed: (){
                if(holat2 == false){
                  setState(() {
                    holat2 = true;
                  });
                } else if(holat2 == true){
                  setState(() {
                    holat2 = false;
                  });
                }
              },
              child: Icon(Icons.more_horiz),
            ),
          )
        ],
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Reels"),
              Icon(Icons.camera_alt),
            ],
          ),
          Center(child: MaterialButton(
            onPressed: (){
              setState(() {
                if(holat == true){
                  ovoz = Icon(Icons.volume_off);
                  holat = false;
                } else if(holat == false){
                  ovoz = Icon(Icons.volume_up);
                  holat = true;
                }
              });
            },
              child: ovoz),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 32,
                width: 32,
                child: MaterialButton(
                    onPressed: (){
                      setState(() {
                        if(liked == false){
                          like = Colors.black;
                          liked= true;
                        } else if(liked==true){
                          like = Colors.red;
                          liked = false;
                        }
                      });
                    },
                  child: Icon(Icons.heart_broken, color: like,),
                ),
              ),
              Icon(Icons.comment),
              Icon(Icons.mobile_screen_share_outlined),
              more()
            ],
          )
        ],
      )
    );
  }
}
