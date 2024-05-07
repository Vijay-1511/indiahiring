import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTitleImage extends StatelessWidget {
  final String? imagePath;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;
  final double? width;
  final double? height;

  const AppbarTitleImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: height ?? 24.adaptSize,
          width: width ?? 24.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
