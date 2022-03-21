import 'package:flutter/material.dart';
import 'package:project_mesrdv/constants.dart';
import 'package:project_mesrdv/models/doctors.dart';
import 'package:project_mesrdv/rdvbody.dart';
 class Mesrdv extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcgcolor,
      appBar: RDVAppBar(),
      body: rdvbody(),
    );
  }

  AppBar RDVAppBar() {
    return AppBar( 

      backgroundColor: bcgcolor,
      leading: BackButton(
        color: Colors.black),
      titleSpacing: -15 ,
      title: Text("Retour" , style: TextStyle(color: txtcolor),),
      elevation: 0,
    );
  }
}