import 'package:flutter/material.dart';
class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/eye.jpg'),
            fit: BoxFit.cover,

          ),

        ),
        margin: EdgeInsets.only(top: 100),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.flip_camera_android,  color: Colors.white,),
                            Text("Flip", style: TextStyle( color: Colors.white,),)
                          ],
                        ),

                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.speed, color: Colors.white,),
                            Text("Speed", style: TextStyle( color: Colors.white,),)
                          ],
                        ),

                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.star,  color: Colors.white,),
                            Text("Beauty", style: TextStyle( color: Colors.white,),)
                          ],
                        ),

                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.filter_vintage_outlined,  color: Colors.white,),
                            Text("Filter",style: TextStyle( color: Colors.white,),)
                          ],
                        ),

                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.timer,  color: Colors.white,),
                            Text("Timer", style: TextStyle( color: Colors.white,),)
                          ],
                        ),

                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.flash_off,  color: Colors.white,),
                            Text("Flash", style: TextStyle( color: Colors.white,),)
                          ],
                        ),

                      ),

                    ],

                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 350),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Icon(Icons.face, color: Colors.white,size: 30,),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {

                        }, icon: Icon(Icons.camera, size: 60,)),

                        IconButton(onPressed: () {

                        }, icon: Icon(Icons.close, size: 40,color: Colors.black,)),

                        IconButton(onPressed: () {

                        }, icon: Icon(Icons.check_box, size: 40,color: Colors.red,)),
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
