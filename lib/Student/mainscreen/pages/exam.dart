import 'package:flutter/material.dart';
import 'package:techrank/Student/utils/constrains.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  const Text("Quiz",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color:Colors.white ,
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                        height: 130.0,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                           color: redcard,
                          boxShadow:const [BoxShadow(
                            color: Color.fromARGB(94, 255, 20, 50),
                            blurRadius:  8,
                            offset: Offset(0,8),
                          )]
                        ),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        height: 130.0,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                           color: yellowcard,
                          boxShadow:const [BoxShadow(
                            color: Color.fromARGB(94, 255, 20, 50),
                            blurRadius:  8,
                            offset: Offset(0,8),
                          )]
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        height: 130.0,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                           color: greencard,
                          boxShadow:const [BoxShadow(
                            color: Color.fromARGB(94, 255, 20, 50),
                            blurRadius:  8,
                            offset: Offset(0,8),
                          )]
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        height: 130.0,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                           color: bluecard,
                          boxShadow:const [BoxShadow(
                            color: Color.fromARGB(94, 255, 20, 50),
                            blurRadius:  8,
                            offset: Offset(0,8),
                          )]
                        ),
                    ),
                  ),
              ],
            ),
          ),
         ) ,
      ),
    );
  }
}