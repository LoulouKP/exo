import 'package:flutter/material.dart';
import 'package:devoir/screens/modifier_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text("Skip"),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            CircleAvatar(radius: 50),
            Text("Sign In", style: TextStyle(fontWeight: FontWeight.w700),),
            Row(
              mainAxisAlignment: MainAxisAlignment. start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 90),
                  child: Text("PHONE NUMBER OR E-MAIL", style: TextStyle(fontWeight: FontWeight.w700),),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: "Enter Phone Number or Email",
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment. start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("PASSWORD", style: TextStyle(fontWeight: FontWeight.w700),),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: "Enter Password",
                    ),
                  ),


                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Forgot Password"),

                ],
              )
            ),
            Container(
              child:  ElevatedButton(
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdatePage(),));
                  },
                  child: Text("Sign In")),
            ),
            Text("Or Continue With"),

            Container(
              padding: EdgeInsets.all(12),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.apple),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.apple),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.facebook),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account ?"),
                  Text("Sign Up", style: TextStyle(color: Colors.red),),

                ],
              ),
            )

          ],
        ),

      ),
    );
  }
}
