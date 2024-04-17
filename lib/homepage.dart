import 'package:flutter/material.dart';
import 'package:indiahiring/first_page_nav.dart';
import 'package:indiahiring/second_page_nav.dart';
import 'package:indiahiring/third_page_nav.dart';




class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _textEditingController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List itempages= [

    First_Item(),
    Second_item(),
    Third_item()
  ];

  @override
  Widget build(BuildContext context) {


    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [

          IconButton(
            icon: Icon(Icons.notifications,size: 30),
            onPressed: () {
              // Handle notification action
            },
          ),
          IconButton(
            icon: Icon(Icons.message,size: 30,),
            onPressed: () {
              // Handle message action
            },
          ),
        ],
        centerTitle:true,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.08),
          child: Image.asset('assets/logoimg.png'),
        ),

        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkWell(
            onTap: (){
              _scaffoldKey.currentState?.openDrawer();
            },
            child: CircleAvatar(
            child: Icon(Icons.person),
            ),
          ),
        ),
      ),


      body: itempages[_selectedIndex],
      drawer: Drawer(
        width: screenSize.width*0.7,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: MediaQuery.sizeOf(context).height*.30,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenSize.height*0.05),
                      child: Image.asset('assets/logoimg.png'),
                    ),

                    Divider(

                      color: Colors.black,
                    ),
                    SizedBox(height: screenSize.height*0.02,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/avatar.png'), // Placeholder image asset
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arjun khousi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            Text(
                              'john@example.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Home ',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('My Profile',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('My Job',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('My Review',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Employers',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Jobseekers',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Company Reviews',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Help Center',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Settings',style: Theme.of(context).textTheme. bodyLarge,),
              onTap: () {
                // Handle item 1 tap
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(

        margin: EdgeInsets.only(left: 20,right: 20,bottom: 30), // Change the margin as desired
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,

            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),

            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.purple,
            elevation: 0, // Set elevation to 0 to remove shadow from BottomNavigationBar
            selectedIconTheme: IconThemeData(size: 30),
            unselectedIconTheme: IconThemeData(size: 24),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}




class MySearchBar extends StatefulWidget {
  final List<String> data;

  MySearchBar({required this.data});

  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  String _searchText = '';

  List<String> get _filteredData {
    return widget.data
        .where((element) =>
        element.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(

              decoration: InputDecoration(
                hintText: 'Job tittle, Keyword, or Company...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredData[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}







