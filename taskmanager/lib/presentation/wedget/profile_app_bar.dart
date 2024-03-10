import 'dart:js';

import 'package:flutter/material.dart';

import '../../app.dart';
import '../utility/app_colors.dart';

PreferredSizeWidget get profileAppBar {
  return AppBar(
    backgroundColor: AppColors.themeColor,
    title: Row(children: [
      CircleAvatar(),
      SizedBox(width: 12,),
      const Expanded(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hafizur Rahman Omar",
                style: TextStyle(fontSize: 16, color: Colors.white)),
            Text("hafizurrahmanomomar@gmail.com", style: TextStyle(fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400)),


          ],

        ),
      ),
      IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded),),


    ],),

  );
}