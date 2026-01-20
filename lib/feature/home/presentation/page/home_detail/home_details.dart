import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_maps.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/request_management/presentation/pages/eligibility_test_page.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart'
    show
        Align,
        Alignment,
        Axis,
        BorderRadius,
        BorderRadiusGeometry,
        BoxDecoration,
        BoxFit,
        BuildContext,
        CircleAvatar,
        ClipOval,
        ClipRRect,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Flexible,
        FontWeight,
        Icon,
        Icons,
        Image,
        MainAxisAlignment,
        MediaQuery,
        Radius,
        Row,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TickerProviderStateMixin,
        Widget,
        PageController;
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomeDetails extends StatefulWidget {
  const HomeDetails({super.key, required this.profile});

  final ActiveUserProfile profile;

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails>
    with TickerProviderStateMixin {
  PageController controller = PageController();

  Future<void> openWhatsApp(String phone, {String message = ''}) async {
    final url = Uri.parse(
      'https://wa.me/$phone?text=${Uri.encodeComponent(message)}',
    );

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Impossible d’ouvrir WhatsApp';
    }
  }

  Future<void> launchPhoneCall(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Impossible de lancer l’appel';
    }
  }

  Future<void> makePhoneCall({required String phoneNumber}) async {
    // Vérifie et demande la permission
    var status = await Permission.phone.status;
    if (!status.isGranted) {
      status = await Permission.phone.request();
    }

    if (status.isGranted) {
      // await FlutterPhoneDirectCaller.callNumber(phoneNumber);
      final launchUri = Uri(scheme: 'tel', path: '+225$phoneNumber');
      await launchUrl(launchUri);
    } else {
      throw 'Permission CALL_PHONE refusée';
    }
  }

  File? imageFile;
  late String profileImage = '';
  Future<File?> pickImage() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null)
      return null;
    else {
      setState(() {
        imageFile = File(image.path);
        profileImage = image.path;
      });
      return File(image.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.9.sh,
      decoration: BoxDecoration(
        color: MyColorName.backgroundIvory.withValues(alpha: 0.99),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 5.h,
                width: 0.1.sw,
                margin: EdgeInsets.only(top: 12.h),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(7.r),
                ),
              ),
            ),
            SizedBox(height: 9.h),

            // Container(
            //   width: MediaQuery.sizeOf(context).width.sw,
            //   padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            //   decoration: BoxDecoration(
            //     color: MyColorName.backgroundIvory.withValues(alpha: 0.99),
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(10.r),
            //       topRight: Radius.circular(10.r),
            //     ),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           SizedBox(height: 10.h),
            //           CustomeText(
            //             texte: widget.profile.name,
            //             texteSize: 18.sp,
            //             fontWeight: FontWeight.w600,
            //             color: MyColorName.black,
            //           ),
            //           SizedBox(height: 5.h),
            //           CustomeText(
            //             texte: 'L’Étoile du Soir',
            //             texteSize: 14.sp,
            //             fontWeight: FontWeight.w600,
            //             color: MyColorName.greyMedium,
            //           ),
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           Text(
            //             '1,5k',
            //             style: GoogleFonts.roboto(
            //               color: Colors.grey.shade600,
            //               fontSize: 14.sp,
            //               fontWeight: FontWeight.w700,
            //               letterSpacing: 0.1.sp,
            //             ),
            //           ),
            //           SizedBox(width: 2.w),
            //           Icon(
            //             Icons.star_border_purple500_rounded,
            //             color: Colors.amber,
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              width: MediaQuery.sizeOf(context).width.sw,
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
              decoration: BoxDecoration(
                color: MyColorName.backgroundIvory.withValues(alpha: 0.99),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 0.3.sh,
                        width: MediaQuery.sizeOf(context).width.sw,
                        child: PageView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          controller: controller,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 6.w),
                              width: 0.9.sw,
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(
                                  7.r,
                                ),
                                child: Image.network(
                                  widget.profile.file,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Positioned(
                        right: 2.w,
                        bottom: 0.h,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   fadeRoute(
                            //     HomeMapsOverViewScreen(
                            //       latitude: double.parse(widget.profile.lat),
                            //       longitude: double.parse(widget.profile.long),
                            //       adress: widget.profile.adresse,
                            //     ),
                            //   ),
                            // );

                            Navigator.of(context).push(
                              fadeRoute(
                                EligibilityTestPage(profile: widget.profile),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 0.05.sh,
                                width: 0.05.sh,
                                margin: EdgeInsets.only(
                                  right: 8.w,
                                  bottom: 10.h,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.r),
                                ),
                                child: ClipOval(
                                  child: Image.network(
                                    'https://www.shutterstock.com/image-vector/city-map-navigation-gps-navigator-260nw-2449090905.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 6.h,
                                left: 8.w,
                                child: Icon(
                                  Icons.location_history_rounded,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Positioned(
                      //   left: 0.44.sw,
                      //   bottom: 0.h,
                      //   child: Align(
                      //     alignment: Alignment.centerRight,
                      //     child: Container(
                      //       height: 20.h,
                      //       margin: REdgeInsets.symmetric(vertical: 6.h),
                      //       child: SmoothPageIndicator(
                      //         controller: controller,
                      //         count: 3,
                      //         effect: ColorTransitionEffect(
                      //           dotColor: MyColorName.greyMedium,
                      //           activeDotColor: Colors.amber,
                      //           dotHeight: 3.h,
                      //           radius: 30.r,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),

                  SizedBox(height: 10.h),

                  Row(
                    children: [
                      CircleAvatar(
                        radius: 26.r,
                        child: ClipOval(
                          child: Image.network(
                            widget.profile.profileImage,
                            width: 60.r,
                            height: 60.r,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // CustomeText(
                          //   texte: 'Matching your Selected area',
                          //   texteSize: 11.sp,
                          //   fontWeight: FontWeight.w600,
                          //   color: Colors.amber,
                          //   letterSpacing: 0.1.sp,
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.profile.name,
                                style: GoogleFonts.roboto(
                                  color: Colors.grey.shade600,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.1.sp,
                                ),
                              ),

                              Text(
                                widget.profile.email,
                                style: GoogleFonts.roboto(
                                  color: Colors.green,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.1.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  CustomeText(
                    texte: widget.profile.specialite,
                    texteSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: MyColorName.black,
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 12.h, left: 0.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(width: 2.w),
                        Flexible(
                          child: CustomeText(
                            texte: widget.profile.adresse,
                            texteSize: 12.sp,
                            color: MyColorName.black,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.3.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 8.w,
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.grey.shade600,
                                size: 18.sp,
                              ),

                              SizedBox(width: 5.w),
                              Text(
                                widget.profile.telephone,
                                style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  color: MyColorName.black,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.3.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone_callback,
                                color: Colors.grey.shade600,
                                size: 18.sp,
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                widget.profile.telephone,
                                style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  color: MyColorName.black,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.3.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CustomeText(
                        texte: 'Caratéristique:',
                        texteSize: 13.sp,
                        color: MyColorName.black,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3.sp,
                      ),
                      Container(
                        // margin: EdgeInsets.symmetric(vertical: 5.h),
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => index == 1
                                ? Container(
                                    margin: EdgeInsets.only(
                                      top: 7.h,
                                      left: 8.w,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.bed_rounded,
                                          color: Colors.grey.shade600,
                                          size: 18.sp,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          'Lit : ${widget.profile.averageBed}',
                                          style: GoogleFonts.roboto(
                                            fontSize: 12.sp,
                                            color: MyColorName.black,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.3.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : index == 0
                                ? Container(
                                    margin: EdgeInsets.only(
                                      top: 7.h,
                                      left: 8.w,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.roofing_rounded,
                                          color: Colors.grey.shade600,
                                          size: 18.sp,
                                          opticalSize: 12,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          'Roome : ${widget.profile.roomNumber}',
                                          style: GoogleFonts.roboto(
                                            fontSize: 12.sp,
                                            color: MyColorName.black,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.3.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    margin: EdgeInsets.only(
                                      top: 7.h,
                                      left: 8.w,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.restaurant_menu_sharp,
                                          color: Colors.grey.shade600,
                                          size: 18.sp,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          ': ${widget.profile.option}',
                                          style: GoogleFonts.roboto(
                                            fontSize: 12.sp,
                                            color: MyColorName.black,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.3.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // description
                  Container(
                    margin: EdgeInsets.only(top: 8.h),
                    child: CustomeText(
                      texte: 'Description:',
                      texteSize: 13.sp,
                      color: MyColorName.black,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3.sp,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 0.1.sh,
                        margin: EdgeInsets.only(top: 9.h, bottom: 10.h),
                        child: CustomeText(
                          texte: widget.profile.description,
                          texteSize: 12.sp,
                          color: MyColorName.black,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.3.sp,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 19.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomeButton(
                                btnBackground: MyColorName.black,
                                btnTextColor: MyColorName.white,
                                btnText: 'Contacter',
                                btnTextSize: 13,
                                onTap: () {
                                  makePhoneCall(
                                    phoneNumber: widget.profile.telephone,
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: CustomeButton(
                                btnBackground: MyColorName.black,
                                btnTextColor: MyColorName.white,
                                btnText: "Discuter sur what'sapp",
                                btnTextSize: 13,
                                onTap: () {
                                  openWhatsApp(
                                    '225${widget.profile.whatsappContact}',
                                    message:
                                        'Bonjour, je vous contacte depuis l’application',
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
