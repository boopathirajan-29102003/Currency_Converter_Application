// ignore: file_names
import 'package:flutter/material.dart';

//Create statefullwidget
class CurrencyCon extends StatefulWidget{
  const CurrencyCon ({super.key});
  @override
    //State function that a type of Same class
    State<CurrencyCon> createState()=>_AnotherState();
}
//Private class for State function
class _AnotherState extends State<CurrencyCon>{
  double res=0;
  //TextEditController for get a input from text area
  final TextEditingController textEditingController =TextEditingController();
  @override
  //initState Calls super class method create state again
  void initState() {
    super.initState();
  }
  @override
    Widget build(BuildContext context){
        //create const broder variable to store border design for textarea
        const border=OutlineInputBorder(
                borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
                style: BorderStyle.solid,
                //strokeAlign: BorderSide.strokeAlignOutside,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
            );
        //return scaffold entire UI
            return Scaffold(
                backgroundColor:const Color.fromARGB(255, 43, 245, 228),
                //AppBar
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  elevation: 0,
                  title: const Text("Currency Converter"),
                  centerTitle: true,
                  actions: const[
                    Icon(Icons.exit_to_app),
                  ],
                ),
                //body
                body:Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    //Field that show result
                    Text(
                          'INR-$res',
                          style:const TextStyle(
                              fontSize: 35,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w500,
                          ),
                          ),
                      //TextField
                        Padding(
                          padding:const EdgeInsets.fromLTRB(10, 75, 10, 0),
                          child: TextField(
                            controller: textEditingController,
                                    style:const TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                    ),
                                    decoration: const InputDecoration(
                                    hintText:"Enter Amount...",
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        prefixIcon: Icon(Icons.monetization_on),
                                        prefixIconColor: Color.fromARGB(255, 1, 1, 1),
                                        filled: true,
                                        fillColor: Color.fromARGB(255, 255, 255, 255),
                                        focusedBorder: border,
                                        enabledBorder: border,
                                    ),
                                    keyboardType: TextInputType.number,
                                    ),
                          ),
                    //Button
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: () {
                          setState(() {
                          res=double.parse(textEditingController.text)*83.3;
                          });
                      },
                      style:  TextButton.styleFrom(
                        backgroundColor: (Colors.black),
                        foregroundColor: (Colors.white),
                        minimumSize: const Size(double.infinity,50),
                        shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                      child: const Text("Convert"),
                      ),
                    ),
                ],
                )
                ) 
            );
    }

}

// class CurrencyConverterMaterial extends StatelessWidget{
//     const CurrencyConverterMaterial({super.key});
//     @override
//     Widget build(BuildContext context){
//         double res=0;
//         final TextEditingController textEditingController =TextEditingController();
//         const border=OutlineInputBorder(
//                 borderSide: BorderSide(
//                 color: Colors.black,
//                 width: 2.0,
//                 style: BorderStyle.solid,
//                 //strokeAlign: BorderSide.strokeAlignOutside,
//                 ),
//                 borderRadius: BorderRadius.all(Radius.circular(5)),
//             );
//             return Scaffold(
//                 backgroundColor:const Color.fromARGB(255, 43, 245, 228),
//                 appBar: AppBar(
//                   backgroundColor: Colors.black,
//                   elevation: 0,
//                   title: const Text("Currency Converter"),
//                   centerTitle: true,
//                   actions: const[
//                     Icon(Icons.exit_to_app),
//                   ],
//                 ),
//                 body:Center(
//                     child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                     Text(
//                           res.toString(),
//                           style:const TextStyle(
//                               fontSize: 35,
//                               color: Color.fromRGBO(0, 0, 0, 1),
//                               fontWeight: FontWeight.w500,
//                           ),
//                           ),
                      
//                         Padding(
//                           padding:const EdgeInsets.fromLTRB(10, 75, 10, 0),
//                           child: TextField(
//                             controller: textEditingController,
//                               //controller: textEditingController,
//                                     style:const TextStyle(
//                                         color: Color.fromARGB(255, 0, 0, 0),
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                     ),
//                                     decoration: const InputDecoration(
//                                     hintText:"Enter Amount...",
//                                         hintStyle: TextStyle(
//                                             color: Color.fromARGB(255, 0, 0, 0),
//                                         ),
//                                         prefixIcon: Icon(Icons.monetization_on),
//                                         prefixIconColor: Color.fromARGB(255, 1, 1, 1),
//                                         filled: true,
//                                         fillColor: Color.fromARGB(255, 255, 255, 255),
//                                         focusedBorder: border,
//                                         enabledBorder: border,
//                                     ),
//                                     keyboardType: TextInputType.number,
//                                     ),
//                           ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: ElevatedButton(onPressed: () {
//                           res=double.parse(textEditingController.text)*81;
//                       },
//                       style:  TextButton.styleFrom(
//                         backgroundColor: (Colors.black),
//                         foregroundColor: (Colors.white),
//                         minimumSize: const Size(double.infinity,50),
//                         shape: (RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         )),
//                       ),
//                       child: const Text("Convert"),
//                       ),
//                     ),
//                 ],
//                 )
//                 ) 
//             );
//     }
// }

