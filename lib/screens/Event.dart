import 'package:flutter/material.dart';
import 'package:ui_task/screens/CityDetailScreen.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  final TextEditingController _searchControl = new TextEditingController();
  List<String> _locations = ['Paris', 'London', 'America', 'India'];
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new DropdownButtonHideUnderline(
                child: new Theme(
                  data: Theme.of(context).copyWith(canvasColor: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: DropdownButton(
                      iconEnabledColor: Colors.white,
                      hint: Text(
                        'Location',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ), // Not necessary for Option 1
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(
                            location,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        height: 30,
                        width: 40,
                        child: Image.asset('lib/images/search.png')),
                    Container(
                      height: 30,
                      width: 40,
                      child: Image.asset('lib/images/filter.png'),
                    )
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 30),
          Container(
            height: 275,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CityDetailScreen()));
                    },
                    child: Container(
                      height: 275,
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset(
                              "lib/images/photo.jpeg",
                              height: 150,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          //  SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Popular Events",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              FlatButton(
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CityDetailScreen()));
                    },
                    child: Container(
                      height: 275,
                      width: 275,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "lib/images/photo.jpeg",
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
