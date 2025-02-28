import 'package:flutter/material.dart';

AppBar appBarWidget(String title) {
    return AppBar(
      centerTitle: true,
      title:Text(title) ,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }