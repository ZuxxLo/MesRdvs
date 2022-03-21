import 'package:flutter/material.dart';
import 'package:project_mesrdv/constants.dart';
import 'package:project_mesrdv/models/doctors.dart';

class rdvbody extends StatelessWidget {
  const rdvbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bcgcolor,
      child: ListView.builder(
          itemCount: Doctor.blog().length,
          itemBuilder: (ctx, index) {
            return Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                shadowColor: Colors.black,
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding:
                            EdgeInsets.all(6)), // padding circle avatar left
                    Container(
                      height: 90,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(226, 119, 244, 253),
                        radius: 33,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(Doctor.blog()[index].image),
                          radius: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Expanded( // overflow from right handeling
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            Doctor.blog()[index].nameofthedoctor,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            
                            height: 8,
                          ),
                          Text(DateTime.now().toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
