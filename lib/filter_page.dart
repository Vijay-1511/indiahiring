import 'package:flutter/material.dart';

class Filter_page extends StatefulWidget {
  const Filter_page({super.key});

  @override
  State<Filter_page> createState() => _Filter_pageState();
}

class _Filter_pageState extends State<Filter_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("Filters",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueAccent,

                  )),
                  Text("Close All",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueAccent,

                  ))
                ],

              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 3.0,

            color: Colors.deepOrange,
          ),
          Expanded(

            flex: 9,
            child: Row(

              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width/2,
                  height: MediaQuery.sizeOf(context).height,
                  child:Card(
                    color: Colors.blue,
                    child: Column(

                      children: [
                        SizedBox(
                          height: 50,
                        ),

                        Text("Quick Filtters",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),

                        Text("Job Type",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Text("Date Posted",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),

                        Text("Expirence Level",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Text("Salary",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Text("Tags/Categories",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),

                  ),
                ),
                Container(color: Colors.white,),
              ],

            ),
          ),
          Divider(
            height: 1,
            thickness: 3.0,

            color: Colors.deepOrange,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  ElevatedButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      minimumSize: MaterialStateProperty.all<Size>(Size(120, 40)), // Adjust size as needed

                    ),
                    child: Text('Close',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,

                        fontWeight: FontWeight.bold
                    ),),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      minimumSize: MaterialStateProperty.all<Size>(Size(120, 40)), // Adjust size as needed

                    ),
                    child: Text('Apply',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  ),
                ],


              ),
            ),
          ),



        ],
      ),
    );
  }
}
