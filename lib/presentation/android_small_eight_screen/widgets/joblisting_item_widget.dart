import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class JoblistingItemWidget extends StatefulWidget {
  const JoblistingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<JoblistingItemWidget> createState() => _JoblistingItemWidgetState();
}

class _JoblistingItemWidgetState extends State<JoblistingItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 205.h,
                      child: Text(
                        "Associate - Corporate Relation & Partnership",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeInterBlack900,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark,
                    height: 15.v,
                    width: 12.h,
                    margin: EdgeInsets.only(bottom: 19.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 18.v,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Text(
              "Paisa bazar",
              style: CustomTextStyles.bodySmallGray800,
            ),
            SizedBox(height: 1.v),
            Text(
              "Mp nagar",
              style: CustomTextStyles.bodySmallGray80001,
            ),
            SizedBox(height: 6.v),
            SizedBox(
              height: 19.v,
              width: 193.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "16,00,000 -    18,00,000 a year",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray900,
                            height: 7.v,
                            width: 5.h,
                            margin: EdgeInsets.only(top: 4.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray900,
                            height: 7.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 67.h,
                              top: 4.v,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                SizedBox(
                  height: 19.v,
                  width: 92.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Night-shift +1",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 19.v,
                          width: 92.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue700.withOpacity(0.24),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.25),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 19.v,
                  width: 92.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Full-time +1",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 19.v,
                          width: 92.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue700.withOpacity(0.24),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.25),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorBlack900,
                    height: 9.v,
                    width: 6.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "Easy Apply",
                      style: theme.textTheme.labelSmall,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "Just posted ",
                style: CustomTextStyles.kreonBlack900,
              ),
            ),

            SizedBox(height: 12.v),



            // Second JobListing item
            SizedBox(height: 12.v),

            Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 205.h,
                      child: Text(
                        "Associate - Corporate Relation & Partnership",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeInterBlack900,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark,
                    height: 15.v,
                    width: 12.h,
                    margin: EdgeInsets.only(bottom: 19.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 18.v,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Text(
              "Paisa bazar",
              style: CustomTextStyles.bodySmallGray800,
            ),
            SizedBox(height: 1.v),
            Text(
              "Mp nagar",
              style: CustomTextStyles.bodySmallGray80001,
            ),
            SizedBox(height: 6.v),
            SizedBox(
              height: 19.v,
              width: 193.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "16,00,000 -    18,00,000 a year",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray900,
                            height: 7.v,
                            width: 5.h,
                            margin: EdgeInsets.only(top: 4.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray900,
                            height: 7.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 67.h,
                              top: 4.v,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                SizedBox(
                  height: 19.v,
                  width: 92.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Night-shift +1",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 19.v,
                          width: 92.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue700.withOpacity(0.24),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.25),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 19.v,
                  width: 92.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Full-time +1",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 19.v,
                          width: 92.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue700.withOpacity(0.24),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.25),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorBlack900,
                    height: 9.v,
                    width: 6.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "Easy Apply",
                      style: theme.textTheme.labelSmall,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "Just posted ",
                style: CustomTextStyles.kreonBlack900,
              ),
            ),
            SizedBox(height: 12.v),

            // Third Jon Listing Item
            SizedBox(height: 12.v),
            // First Job Listing Item
            Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 205.h,
                      child: Text(
                        "Associate - Corporate Relation & Partnership",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeInterBlack900,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark,
                    height: 15.v,
                    width: 12.h,
                    margin: EdgeInsets.only(bottom: 19.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 18.v,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Text(
              "Paisa bazar",
              style: CustomTextStyles.bodySmallGray800,
            ),
            SizedBox(height: 1.v),
            Text(
              "Mp nagar",
              style: CustomTextStyles.bodySmallGray80001,
            ),
            SizedBox(height: 6.v),
            SizedBox(
              height: 19.v,
              width: 193.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "16,00,000 -    18,00,000 a year",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray900,
                            height: 7.v,
                            width: 5.h,
                            margin: EdgeInsets.only(top: 4.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorGray900,
                            height: 7.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 67.h,
                              top: 4.v,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                SizedBox(
                  height: 19.v,
                  width: 92.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Night-shift +1",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 19.v,
                          width: 92.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue700.withOpacity(0.24),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.25),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 19.v,
                  width: 92.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Full-time +1",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 19.v,
                          width: 92.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue700.withOpacity(0.24),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.25),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorBlack900,
                    height: 9.v,
                    width: 6.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "Easy Apply",
                      style: theme.textTheme.labelSmall,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "Just posted ",
                style: CustomTextStyles.kreonBlack900,
              ),
            ),

          ],

        ),

      ),
    );

  }
}
