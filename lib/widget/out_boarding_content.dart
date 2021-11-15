import 'dart:ui';

import 'package:flutter/material.dart';

class OutBoardingContent extends StatelessWidget {
  const OutBoardingContent({
    Key? key,



  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  const [
          // CircleAvatar(
          //   radius: 55,
          // ),
          // SvgPicture.asset('images/learn.png')
          Image(image: AssetImage('images/learn.png'),),
          SizedBox(height: 10),

          Text('',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
