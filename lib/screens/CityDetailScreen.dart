import 'package:flutter/material.dart';

class CityDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          height: double.infinity,
          child: Image.network('https://cdn.expatica.com/production/sites/2/2018/06/15013907/ES-homepage-hero-1200x675.jpg',fit: BoxFit.fill,)
      ),
      SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                MaterialButton(
                  padding: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  textColor: Colors.black,
                  minWidth: 0,
                  height: 40,
                  onPressed: () => Navigator.pop(context),
                ),
              ]),
            ),
            Spacer(),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 10.0),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Image.asset('lib/images/male.jpg',height: 50,width: 50,),
                                  title: Text('Izabel Peattie',style: TextStyle(
                                    color: Colors.white
                                  ),),
                                  subtitle: Text('Organizer',style: TextStyle(
                                    color: Colors.white
                                  ),),
                                  trailing: RaisedButton(child: new Text("follow",style: TextStyle(color: Colors.white),),color: Colors.grey,
                                      onPressed: (){

                                  }),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey[800]),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text("FRI, DEC 19TH - MON, DEC 27TH",style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.bold),),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text("Nocturnal and \n unusal visit",style: TextStyle(color: Colors.white,fontSize: 25),),
                                              Icon(Icons.favorite,color: Colors.red,),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: <Widget>[
                                              Text("Musee du Louvre, Paris",style: TextStyle(color: Colors.white,fontSize: 15),),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Center(child: SizedBox(
                                                width: 180,
                                                child: RaisedButton(color: Colors.blue,child: new Text("Get Ticket",style: TextStyle(color: Colors.white),),onPressed: (){

                                                }),
                                              )),
                                              height: 190.0,
                                              width: MediaQuery.of(context).size.width - 10.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: Colors.blue,
                                                  image: DecorationImage(
                                                      image: new NetworkImage(
                                                          "https://d3l69s690g8302.cloudfront.net/wp-content/uploads/2018/07/25050715/ubermap_blur1.jpg"
                                                      ),
                                                      fit: BoxFit.fill
                                                  )
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )))
          ],
        ),
      )
    ]));
  }
}
