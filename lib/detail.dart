import 'package:dicoding/object_ticket.dart';
import 'package:flutter/material.dart';

class DescribeDestination extends StatelessWidget {
  const DescribeDestination({Key? key, required this.ticket}) : super(key: key);

  final ObjectTiket ticket;

  @override
  Widget build(BuildContext context) {
    bool x = true;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child: Icon(Icons.thumb_up_alt_outlined,
        )),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      image: DecorationImage(
                          image: NetworkImage(ticket.imageUrls),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(children: [
                    Positioned(
                        top: 0,
                        left: 5,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 7,
                                    offset: Offset(0, 5),
                                    spreadRadius: 5,
                                    color: Colors.grey)
                              ]),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                        )),
                  ]),
                ),
                Container(
                  child: content(
                      ticket.fname,
                      ticket.star.toString(),
                      ticket.imageUrls,
                      "1",
                      ticket.fdesc,
                      ticket.fhtm.toString(),
                      "Jakarta"),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ])),
        ));
  }


  Widget content(String name, String star, String image, String person,
      String desc, String price, String country) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(name,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.grey) ),
              ),
              //maxLines: 2),
            
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'HTM : Rp. ' + price,
                //style: ThemeFonts.textStyle200,
                maxLines: 2,
              ),
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    margin: EdgeInsets.all(5),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Lokasi',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          country,
                          maxLines: 2,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                  )),

              Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    margin: EdgeInsets.all(5),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Rate',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          star,
                          maxLines: 2,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Deskripsi',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 3),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          margin: EdgeInsets.all(5),
          child: Text(
            desc,
            style: TextStyle(
              wordSpacing: 4,
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }

}
