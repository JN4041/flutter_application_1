import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height/812;
    final width=MediaQuery.of(context).size.width/375;
    return Scaffold(
      body: Column(
        children: [
          button(context),
            MaterialButton(onPressed: () {
           
         }, child: Text("Submit"),
         minWidth:width* 200,
         height: height*40,
         color: balck,
         shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
         )
      

        ],
      )
    );
  }
}

Widget button(context){
  final height=MediaQuery.of(context).size.height/812;
  final width=MediaQuery.of(context).size.width/375;
  return  Stack(
            clipBehavior: Clip.none,
            children: [
              Container(height: height*600,
              width: double.infinity,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJlVfFnW4bMOiL1E-60sZjsgYMsq0zri0xLFH6QUKsh-LfVr4oZU9hIkWQHZ0eZRaHNss&usqp=CAU",fit: BoxFit.cover,),
              ),
             Positioned(child: Container(
              height: height*550,
              width: double.infinity,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXv1IKw2d6kWeKD4Mk6aaMkmlDwnawp4428k8L8LGeEiQ2CTndwbDTHNhy2zjNOhh3Qe4&usqp=CAU",fit: BoxFit.cover,),),),
            Positioned(
              top: 220,
              left: 120,
              child: Container(
              height: height*200,
              width:width*130,
              color: Colors.amber,
              child: Image.network("https://media.istockphoto.com/id/1313644269/vector/gold-and-silver-circle-star-logo-template.jpg?s=612x612&w=0&k=20&c=hDqCI9qTkNqNcKa6XS7aBim7xKz8cZbnm80Z_xiU2DI=",fit: BoxFit.cover,),),),
           
            ],
          );
}
