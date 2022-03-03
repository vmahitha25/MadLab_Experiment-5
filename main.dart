import 'primarypage.dart';
import 'package:flutter/material.dart';
import 'mailpage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
  Text("Home Page", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text("Search Page", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text("Profile Page", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
 
 void _onItemTapped(int index){
   setState(() {
     _selectedIndex = index;
   });
 }

 
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 5 Navigation Drawer'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.indigoAccent),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.blue),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.lightBlueAccent,
              )
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => setState(() {
                _count++;
              }),
              tooltip: 'Increment Counter',
              child: const Icon(Icons.add),
              backgroundColor: Colors.indigoAccent,
              ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children:  <Widget>[
            const UserAccountsDrawerHeader(
              accountName:Text("Mahitha Vaidyanathan") , 
              accountEmail: Text("mahithavit119@gst.sies.edu.in"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Mahitha"),
                ),
              ),
              ListTile(
                title: const Text("Inbox"),
                leading: const Icon(Icons.mail),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> const Mailpage()),
                  );
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text("Primary"),
                leading: const Icon(Icons.inbox),
                onTap:(){
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Primarypage()),
                  );
                },                
              ),
              ListTile(
                title: const Text("Social"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                title: const Text("Promotions"),
                leading: new Icon(Icons.local_offer),
              )
           ],
        ),
      ),
    );
  }
}


