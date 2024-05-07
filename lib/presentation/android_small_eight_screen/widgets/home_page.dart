import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vijay_s_application1/core/app_export.dart';

import '../../../theme/custom_text_style.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0), // Adjust the height of the line as needed
          child: Divider(
            color: Colors.blue,
            thickness: 2.0, // Adjust the thickness of the line as needed
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
        ),
        margin: EdgeInsets.all(10), // Adjust margin as needed
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Quick Filter", style: CustomTextStyles.bodySmallAsap, selectionColor: Colors.white,),
              SizedBox(height: 50.v),
              Text("Job Type", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 50.v),
              Text("Date Posted", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 50.v),
              Text("Experience Level", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 50.v),
              Text("Salary", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 50.v),
              Text("Tag/Categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
        ),

      ),


    );

  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 17.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
    );
  }

  Widget _buildRowUserOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 35.v,
            width: 51.h,
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),

          ),
          CustomElevatedButton(
            width: 121.h,
            text: "Remote ",
          ),

          CustomElevatedButton(
            width: 121.h,
            text: "Remote ",
          ),

        ],
      ),
    );
  }












  // Navigation back to the previous Screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

