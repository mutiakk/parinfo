import 'package:dicoding/info.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'object_ticket.dart';
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        title: Text(title,style: TextStyle(
          color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 28,letterSpacing: 2
        ),),elevation: 0,actions: [
          IconButton(onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoPage(),
            ),
          );}, icon: Icon(Icons.info_outline,color: Colors.grey,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.grey,
                      Colors.transparent,
                    ],
                  )
              ),
              child: ListView.builder(
                itemCount: listDestinasi.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final ObjectTiket ticket = listDestinasi[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DescribeDestination(
                            ticket: ticket,
                          ),
                        ),
                      );
                    },
                    // Membuat lapisan
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      width: 200,
                      height:  100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(ticket.imageUrls),
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                'List Wisata',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 3),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey, width: 2.0)),
              child: Row(
                children: [
                  Expanded(child: Text("Cari Tujuan Wisata, **can't use",style: TextStyle(color: Colors.grey[350]),
                  ),),
                  Icon(Icons.search,color: Colors.grey,)
                ],
              ),
            ),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listDestinasi.length,
                itemBuilder: (BuildContext context, int index) {
                  final ObjectTiket ticket = listDestinasi[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DescribeDestination(
                            ticket: ticket,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(ticket.imageUrls),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.1),
                                BlendMode.darken)),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        //decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ticket.fname,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                            Text(
                              ticket.place,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}