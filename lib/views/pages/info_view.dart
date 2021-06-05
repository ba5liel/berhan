import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  final String result;

  InfoView({@required this.result});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[

            Expanded(
              flex: 2,
                      child: Container(
              height: 80,
              child: Center(
                child: Card(child:  (result == null)
          ? CircularProgressIndicator() : Text(result, 
                textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900, fontSize: 208),),),
              ),
            ),
          ),

      //     Expanded(
      //                 child: Container(
      //                   width: 20,
      //                   child: Card(
      //         elevation: 1.0,
              
      //       ),
      //                 )
      //     ,flex: 2,)
      //     ,
      //  //  Spacer(),
      //     Expanded(
      //                 child: Card(
      //         elevation: 1.0,
      //         child: Container(),
      //       ),
      //     flex:4),
      //    //  Spacer(),
      //     Expanded(
      //                 child: Card(
      //         elevation: 1.0,
      //         child: Container(),
      //       ),
      //     flex:2),
      //     Spacer()
        ],
      ),
      
    );
  }
}