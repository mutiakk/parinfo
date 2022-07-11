import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inpoin",style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 28,
            letterSpacing: 2),
        ),
        elevation: 0,
        backgroundColor: Colors.white,),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/pesona.png",height: 200,width: 350,),
            Text("Aplikasi ini dibuat agar pengguna tahu destinasi pariwisata yang ada di Indonesia"),
          ],
        ),
      ),
    );
  }
}

