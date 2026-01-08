import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart'
    show
        Align,
        Alignment,
        Axis,
        Border,
        BorderRadius,
        BorderRadiusGeometry,
        BoxDecoration,
        BoxFit,
        BoxShape,
        BuildContext,
        CircleAvatar,
        ClipOval,
        ClipRRect,
        Color,
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
        ListTile,
        MainAxisAlignment,
        Material,
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
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({super.key, required this.profile});

  final ActiveUserProfile profile;

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails>
    with TickerProviderStateMixin {
  PageController controller = PageController();

  late int currentIdenx = 0;

  final MapController _mapController = MapController();
  late MapController mapController;

  void _animatedMapMove(LatLng destLocation, double dezoomer) {
    // Décalage pour que le marqueur soit plus haut dans l’écran
    const double offsetLatitude = -0.002;

    // Nouveau point où la caméra doit aller (un peu plus haut que le marqueur)
    final LatLng cameraTarget = LatLng(
      destLocation.latitude + offsetLatitude,
      destLocation.longitude,
    );

    final latTween = Tween<double>(
      begin: mapController.camera.center.latitude,
      end: cameraTarget.latitude,
    );
    final lngTween = Tween<double>(
      begin: mapController.camera.center.longitude,
      end: cameraTarget.longitude,
    );
    final zoomTween = Tween<double>(
      begin: mapController.camera.zoom,
      end: dezoomer,
    );

    final controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    final animation = CurvedAnimation(
      parent: controller,
      curve: Curves.fastOutSlowIn,
    );

    controller.addListener(() {
      mapController.move(
        LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
        zoomTween.evaluate(animation),
      );
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
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
                                  'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?fm=jpg&q=60&w=3000',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Positioned(
                        left: 0.44.sw,
                        bottom: 0.h,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 20.h,
                            margin: REdgeInsets.symmetric(vertical: 6.h),
                            child: SmoothPageIndicator(
                              controller: controller,
                              count: 3,
                              effect: ColorTransitionEffect(
                                dotColor: MyColorName.greyMedium,
                                activeDotColor: Colors.amber,
                                dotHeight: 3.h,
                                radius: 30.r,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.h),

                  Row(
                    children: [
                      CircleAvatar(
                        radius: 26.r,
                        child: ClipOval(
                          child: Image.network(
                            'https://media.istockphoto.com/id/2206641809/photo/side-view-of-handsome-young-ma.jpg?s=612x612&w=0&k=20&c=PPap8uU-zXdxZmjjKt-IEH0NGSq04qOAn_8uSRZcxxQ=',
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
                                'orem ipsum dolor sit amet',
                                style: GoogleFonts.roboto(
                                  color: Colors.grey.shade600,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.1.sp,
                                ),
                              ),

                              Text(
                                'orem ipsum dolor sit amet',
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
                    texte: widget.profile.name,
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
                        SizedBox(width: 4.w),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.w),
                          child: Row(
                            children: List.generate(
                              2,
                              (index) => index == 1
                                  ? Container(
                                      margin: EdgeInsets.only(left: 8.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.person_pin,
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
                                    )
                                  : Container(
                                      margin: EdgeInsets.only(),
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CustomeText(
                      //   texte: 'Cara',
                      //   texteSize: 13.sp,
                      //   color: MyColorName.black,
                      //   fontWeight: FontWeight.w700,
                      //   letterSpacing: 0.3.sp,
                      // ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 3.w),
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
                        height: 0.4.sh,
                        // color: MyColorName.errorRed,
                        margin: EdgeInsets.only(top: 9.h, bottom: 35.h),
                        child: CustomeText(
                          texte: widget.profile.description,
                          texteSize: 12.sp,
                          color: MyColorName.black,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.3.sp,
                        ),
                      ),

                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Container(
                      //       margin: EdgeInsets.only(top: 3.h, bottom: 10.h),
                      //       child: CustomeText(
                      //         texte: 'Commentaire:',
                      //         texteSize: 13.sp,
                      //         color: MyColorName.black,
                      //         fontWeight: FontWeight.w700,
                      //         letterSpacing: 0.3.sp,
                      //       ),
                      //     ),
                      //     SizedBox(width: 5.w),
                      //     Icon(Icons.edit_outlined, color: Colors.amber),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 0.19.sh,
                      //   // color: MyColorName.greyMedium,
                      //   child: SingleChildScrollView(
                      //     child: Column(
                      //       children: [
                      //         ...List.generate(
                      //           4,
                      //           (index) => Container(
                      //             margin: EdgeInsets.symmetric(vertical: 8.h),
                      //             decoration: BoxDecoration(
                      //               color: MyColorName.cardBorder.withValues(
                      //                 alpha: 0.3,
                      //               ),
                      //               borderRadius: BorderRadius.circular(6.r),
                      //             ),
                      //             child: ListTile(
                      //               title: CustomeText(
                      //                 texte: 'Matching your',
                      //                 texteSize: 14.sp,
                      //                 fontWeight: FontWeight.w600,
                      //                 color: Colors.green,
                      //                 letterSpacing: 0.1.sp,
                      //               ),
                      //               subtitle: Column(
                      //                 children: [
                      //                   CustomeText(
                      //                     texte:
                      //                         'Un nouveau système utilisant des ressorts de mouvement rend',
                      //                     texteSize: 12.sp,
                      //                     fontWeight: FontWeight.w600,
                      //                     color: Colors.black38,
                      //                     letterSpacing: 0.1.sp,
                      //                   ),
                      //                 ],
                      //               ),
                      //               leading: CircleAvatar(
                      //                 radius: 20.r,
                      //                 child: ClipOval(
                      //                   child: Image.network(
                      //                     'https://media.istockphoto.com/id/2206641809/photo/side-view-of-handsome-young-ma.jpg?s=612x612&w=0&k=20&c=PPap8uU-zXdxZmjjKt-IEH0NGSq04qOAn_8uSRZcxxQ=',
                      //                     width: 60.r,
                      //                     height: 60.r,
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                 ),
                      //               ),
                      //               trailing: Icon(
                      //                 Icons.arrow_right_alt_rounded,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 14.h),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Container(
                      //       margin: EdgeInsets.only(top: 3.h, bottom: 10.h),
                      //       child: CustomeText(
                      //         texte: 'Maps View',
                      //         texteSize: 15.sp,
                      //         color: MyColorName.black,
                      //         fontWeight: FontWeight.w700,
                      //         letterSpacing: 0.3.sp,
                      //       ),
                      //     ),
                      //     SizedBox(width: 5.w),
                      //     Icon(Icons.room_rounded, color: Colors.amber),
                      //   ],
                      // ),

                      // Container(
                      //   height: 170,
                      //   padding: EdgeInsets.all(0.3),
                      //   margin: EdgeInsets.only(bottom: 35.h),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.white),
                      //     borderRadius: BorderRadius.circular(6),
                      //   ),
                      //   child: FlutterMap(
                      //     mapController: _mapController,
                      //     options: MapOptions(
                      //       onTap: (tapPosition, point) {
                      //         _animatedMapMove(point, 10);
                      //       },
                      //       initialCenter: LatLng(
                      //         double.parse(widget.profile.lat),
                      //         double.parse(widget.profile.long),
                      //       ),
                      //       initialZoom: 9,
                      //       maxZoom: 23,
                      //       minZoom: 16,
                      //     ),
                      //     children: [
                      //       TileLayer(
                      //         urlTemplate:
                      //             'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      //         userAgentPackageName:
                      //             'dev.fleaflet.flutter_map.example',
                      //       ),

                      //       MarkerLayer(
                      //         alignment: Alignment.topCenter,
                      //         markers: [
                      //           Marker(
                      //             rotate: true,
                      //             width: 100,
                      //             height: 100,
                      //             point: LatLng(5.3890300, -4.0082910),
                      //             child: Column(
                      //               children: [
                      //                 Material(
                      //                   color: Colors.transparent,
                      //                   child: Container(
                      //                     padding: EdgeInsets.symmetric(
                      //                       vertical: 7,
                      //                       horizontal: 5,
                      //                     ),
                      //                     decoration: BoxDecoration(
                      //                       color: Colors.black45,
                      //                       borderRadius: BorderRadius.circular(
                      //                         3,
                      //                       ),
                      //                     ),
                      //                     child: Text(
                      //                       'Own',
                      //                       style: GoogleFonts.roboto(
                      //                         color: Colors.white,
                      //                         fontSize: 10,
                      //                         fontWeight: FontWeight.w500,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 SizedBox(height: 10),
                      //                 Container(
                      //                   // padding: EdgeInsets.all(1),
                      //                   decoration: BoxDecoration(
                      //                     border: Border.all(
                      //                       color: Colors.grey,
                      //                       width: 1,
                      //                     ),
                      //                     shape: BoxShape.circle,
                      //                   ),
                      //                   child: Icon(
                      //                     Icons.circle,
                      //                     color: Color(0xFFF16E00),
                      //                     size: 18,
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
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
