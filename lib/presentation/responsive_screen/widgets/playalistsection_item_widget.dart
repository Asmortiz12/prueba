import 'package:alexander_sebastian_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlayalistsectionItemWidget extends StatelessWidget {
  const PlayalistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMascara1,
            height: 90.v,
            width: 160.h,
          ),
          SizedBox(height: 33.v),
          Text(
            "A la Playa",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 278.h,
            child: Text(
              "Si lo que quieres es tumbarte al sol, \nnuestros viajes temáticos son lo tuyo.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                height: 1.60,
              ),
            ),
          ),
          SizedBox(height: 35.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ver más",
                style: CustomTextStyles.titleMediumPlusJakartaSansOrange600,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 25.v),
        ],
      ),
    );
  }
}
