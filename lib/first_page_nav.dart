import 'package:flutter/material.dart';
class First_Item extends StatelessWidget {
  const First_Item({super.key});


  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:screenSize.width*0.06 ),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Container(
                  width: screenSize.width,
                  height: MediaQuery.sizeOf(context).height*0.06,

                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [

                        Icon(Icons.search,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("Job tittle, Keyword, or Company",style:TextStyle(
                          fontSize: 15,

                        ) ,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: screenSize.width,
                  height: screenSize.height*0.06,

                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [

                         Icon(Icons.location_on,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("Enter City or locality",style:TextStyle(
                          fontSize: 15,

                        ) ,),
                      ],
                    ),
                  ),
                ),

                Container(width: screenSize.width,
                  color: Colors.black12,
                  height: screenSize.height*0.18,
                  child: Center(
                    child: Text("Find Your Dream Job Now. ",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),

                Text("Latest Jobs on Indeed",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                Text("POPULAR CATEGORIES :",style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87
                ),),

             SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),








              ],
            ),
          ),
          _jobcategoryList(context),
          SizedBox(height: 10,),
          _jobadvertisement(context),
        ],
      ),
    );
  }
}


Widget _jobcategoryList(BuildContext context){
  List jobcategorylist=["Work from home","Part time job",'MBA','Engineering','Data Science'];

  return Container(

    height: MediaQuery.sizeOf(context).height*0.05,
    margin: EdgeInsets.symmetric(
      vertical: MediaQuery.sizeOf(context).height*0.01,
    ),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount:jobcategorylist.length ,
        itemBuilder: (context,index){

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.03),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               color: Colors.blue
             ),
          child: Center(
            child: Text(
              jobcategorylist[index],style: TextStyle(color: Colors.black87),
            ),
          ),
        );

    }),

  );
}

Widget _jobadvertisement(BuildContext context){


  List companyRole=[

    'Business Development Associate',
    'Associate - Corporate Relation & Partnership',
    'App Developer'
  ];
  List companyName=[
    'PlanetSpark',
    'Paisa bazar',
    'Tech Digi Pvt ltd'
  ];

  List location=['Chandigarh, Delhi, Jaipur, Madhya Pradesh, Gurgaon',
           'Gurgaon','Bhopal'
  ];

  List salary=[
    '6,00,000 - 7,00,000 / year',
    '4,00,000 - 5,00,00 / year',
    '2,00,000 - 3,00,00 / year'
  ];


  return Container(

    height: MediaQuery.sizeOf(context).height*0.25,
    width:double.infinity,
    margin: EdgeInsets.symmetric(
      vertical: MediaQuery.sizeOf(context).height*0.01,
    ),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
       itemCount:companyName.length,
        itemBuilder: (context,index){

          return Container(
            width: MediaQuery.sizeOf(context).width*0.60,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.03),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 15,),
                Container(

                  width: MediaQuery.sizeOf(context).width*0.2,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Text("Actively Hiring",style: TextStyle(fontSize: 10,
                  fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10,),


                Text(companyRole[index],style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black87
                ),),
                SizedBox(height: 7,),


                Text(companyName[index],style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 9,
                    color: Colors.black87
                ),),
                SizedBox(height: 10,),


                Divider(

                  color: Colors.black87,

                ),
                SizedBox(height: 10,),



                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 2,),
                    Container(

                      width: MediaQuery.sizeOf(context).width*0.4,
                      child: Text(location[index],style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 9,
                          color: Colors.black87
                      ),),
                    ),
                  ],
                ),

                SizedBox(height: 10,),



                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Icon(Icons.monetization_on),
                    SizedBox(width: 2,),
                    Text(salary[index],style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.black87
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text("View Details",style: TextStyle(fontSize: 10,color: Colors.blue),),
                      SizedBox(width: 1,),
                      Icon(Icons.arrow_forward_ios,size: 10,color: Colors.blue,)
                    ],
                  ),
                )
              ],

            ),

          );

        }),

  );
}
