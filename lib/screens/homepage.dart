import 'package:flutter/material.dart';
import 'package:devoir/screens/home_page.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

        appBar: AppBar(
          actions: [
            Text("Skip")
          ],
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: false,

        body: ListView(

          children: [

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/eye.jpg'),
                  fit: BoxFit.cover,

                ),

              ),

              height: 750.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Container(

                    child: Text("Share Post",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                      fontWeight:  FontWeight.w800,

                 ),
                    ),
                  ),
                  Container(

                    child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,

                      ),
                    ),
                  ),
                  Container(
                    height: 100.0,
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios, color: Colors.redAccent,),
          backgroundColor: Colors.transparent,

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) =>HomePage() ,));
          },
        ),
      ),
    );
  }
}
