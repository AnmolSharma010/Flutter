import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stopwatch(),
    );
  }
}
class Stopwatch extends StatefulWidget {
  const Stopwatch({ Key? key }) : super(key: key);

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {

  String hourString = "00",minuteString = "00",secondString ="00";

  int hours = 0, minutes = 0, seconds = 0;
  bool isTimerRunning = false ,isResetButtonVisible = false;
  late Timer _timer;

  

  void StartTimer(){
    setState(() {
      isTimerRunning = true;
    });
   _timer = Timer.periodic(Duration(seconds: 1), (timer){
    _startSecond();

   });

  }

  void _PauseTimer(){
    _timer.cancel();
    setState(() {
      isTimerRunning = false;
    });
    isResetButtonVisible = checkValues();
  }

    void _startSecond(){
      setState(() {
        if(seconds < 59){
          seconds++;
        secondString = seconds.toString();
        if(secondString.length == 1) {
          secondString = "0"+secondString;
        }
        }
        else{
          _startMinute();
        }
      });
    }
          

    void _startMinute(){
      setState(() {
       if(minutes < 59 ){
         seconds = 0;
        secondString = "00";
        minutes++;
        minuteString = minutes.toString();
        if(minuteString.length ==1){
          minuteString ="0" + minuteString;
        }
       }
       else
       {
        _startHours();
       }
      });
    }

    void _startHours(){
      setState(() {
        seconds = 0;
        minutes = 0;
        secondString = "00";
        minuteString = "00";
        hours++;
        hourString = hours.toString();
        if(hourString.length == 1){
          hourString = "0"+hourString;
        }
      });
    }

    void _resetTimer(){
     setState(() {
        seconds = 0;
      minutes = 0;
      hours = 0;
      secondString = "00";
      minuteString = "00";
      hourString = "00";
      isResetButtonVisible = false;
     });
    }

    bool checkValues(){
      if(seconds!= 0 || minutes!=0 || hours!= 0){
        return true;
      }
      else{
        return false;
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const Icon(
        Icons.menu,
        color: Colors.black,),
        title: Text("Stopwatch",
        style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$hourString:$minuteString:$secondString",style: TextStyle(
                fontSize: 50,fontWeight:FontWeight.w500,
              ),
              ),
               Padding(padding: EdgeInsets.all(15)),
              ElevatedButton(onPressed: (){

                if(isTimerRunning) {
                  _PauseTimer();
                }
                else{
                  StartTimer();
                }
              }, 
              child: Text(isTimerRunning?"Pause":"Play"),
              ),
              Padding(padding: EdgeInsets.all(15)),
              isResetButtonVisible? ElevatedButton(onPressed: (){
                  _resetTimer();
              },
               child: Text("Reset"),
               ) 
               :SizedBox(),
            ],
          ),
          ),
      ),
    );
  }
}