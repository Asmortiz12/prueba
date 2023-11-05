import '../responsive_screen/widgets/playalistsection_item_widget.dart';
import 'package:alexander_sebastian_s_application1/core/app_export.dart';
import 'package:alexander_sebastian_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeaderSection(context),
                SizedBox(height: 55.v),
                Text(
                  "Nuestros destinos",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 39.v),
                Container(
                  width: 274.h,
                  margin: EdgeInsets.only(
                    left: 50.h,
                    right: 51.h,
                  ),
                  child: Text(
                    "Disfruta de todos los lugares que\ntenemos para ti",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeBluegray90018.copyWith(
                      height: 1.60,
                    ),
                  ),
                ),
                SizedBox(height: 59.v),
                _buildPlayaListSection(context),
                SizedBox(height: 44.v),
                _buildDestinosSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection(BuildContext context) {
    return SizedBox(
      height: 652.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBanner,
            height: 652.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 23.v,
                right: 20.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "•••GoTravel",
                          style: CustomTextStyles.titleLargeWhiteA700,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Column(
                            children: [
                              Container(
                                height: 2.v,
                                width: 35.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Container(
                                height: 2.v,
                                width: 35.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Container(
                                height: 2.v,
                                width: 35.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 153.v),
                  Container(
                    width: 281.h,
                    margin: EdgeInsets.only(right: 53.h),
                    child: Text(
                      "Vive las mejores \nexperiencias",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Container(
                    width: 292.h,
                    margin: EdgeInsets.only(right: 42.h),
                    child: Text(
                      "En un viaje, todo lo que consigues \nes por ti mismo.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.titleLargeDMSansWhiteA700.copyWith(
                        height: 1.60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayaListSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return PlayalistsectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDestinosSection(BuildContext context) {
    return SizedBox(
      height: 1527.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 530.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgSuscribirse,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImgSuscribirse,
                    height: 530.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 72.v,
                        right: 19.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 287.h,
                            margin: EdgeInsets.only(
                              left: 22.h,
                              right: 26.h,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Comienza un nuevo viaje",
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                  TextSpan(
                                    text: " \n",
                                    style: CustomTextStyles
                                        .headlineSmallBluegray900,
                                  ),
                                  TextSpan(
                                    text: "alrededor del mundo",
                                    style:
                                        CustomTextStyles.headlineSmallOrange600,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          SizedBox(
                            width: 229.h,
                            child: Text(
                              "Suscríbete a nuestro Newsletter para estar\nenterado de las novedades",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelLarge!.copyWith(
                                height: 1.60,
                              ),
                            ),
                          ),
                          SizedBox(height: 45.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 16.v,
                            ),
                            decoration: AppDecoration.outlineGray,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 8.h,
                                    top: 8.v,
                                    bottom: 8.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.h,
                                    top: 10.v,
                                    bottom: 9.v,
                                  ),
                                  child: Text(
                                    "Escribe aquí tu e-mail",
                                    style:
                                        CustomTextStyles.bodySmallBluegray900,
                                  ),
                                ),
                                Spacer(),
                                CustomElevatedButton(
                                  width: 117.h,
                                  text: "Suscrbírme",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 30.v,
              ),
              decoration: AppDecoration.fillGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "•••GoTravel",
                        style: CustomTextStyles.titleLargeWhiteA700,
                      ),
                    ),
                  ),
                  SizedBox(height: 46.v),
                  Divider(
                    indent: 5.h,
                    endIndent: 5.h,
                  ),
                  SizedBox(height: 48.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgWhatsapp,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.only(bottom: 17.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Whatsapp",
                                  style: theme.textTheme.bodyLarge,
                                ),
                                SizedBox(height: 4.v),
                                Text(
                                  "0812 3456 7890",
                                  style: CustomTextStyles.titleMediumMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEnvelopeopen,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.only(
                              top: 1.v,
                              bottom: 19.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: theme.textTheme.bodyLarge,
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "hola@gotravel.com",
                                  style: CustomTextStyles.titleMediumMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCall,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.only(
                              top: 1.v,
                              bottom: 17.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Call Center",
                                  style: theme.textTheme.bodyLarge,
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "+6222 3456 7891",
                                  style: CustomTextStyles.titleMediumMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 52.v),
                  Divider(
                    color: appTheme.whiteA700.withOpacity(0.21),
                    indent: 9.h,
                    endIndent: 1.h,
                  ),
                  SizedBox(height: 51.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 16.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nosotros",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 47.v),
                              Text(
                                "Blog",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 20.v),
                              Text(
                                "Fotos",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 23.v),
                              Text(
                                "Tips de viaje",
                                style: theme.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Soporte",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 45.v),
                            Text(
                              "Centro de ayuda",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 21.v),
                            Text(
                              "Política de privacidad",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 20.v),
                            SizedBox(
                              width: 85.h,
                              child: Text(
                                "Términos y condiciones",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  height: 1.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 52.v),
                  Divider(
                    indent: 9.h,
                    endIndent: 1.h,
                  ),
                  SizedBox(height: 51.v),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Destinos",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 47.v),
                            Text(
                              "Playa",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 20.v),
                            Text(
                              "Montaña",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 21.v),
                            Text(
                              "Inolvidables",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 22.v),
                            Text(
                              "Eventos",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 141.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Síguenos",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 21.v),
                              SizedBox(
                                width: 158.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgSettings,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(right: 5.h),
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgLocation,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.h),
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgTwitter,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.h),
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgYoutubelogo,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(left: 5.h),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 64.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
