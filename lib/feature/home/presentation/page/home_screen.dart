import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_detail/home_details.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_maps.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/menu/user_menu.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeOverView extends StatefulWidget {
  const HomeOverView({super.key});

  @override
  State<HomeOverView> createState() => _HomeOverViewState();
}

class _HomeOverViewState extends State<HomeOverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        top: true,
        child: Container(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: 12.h,
            horizontal: 10.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 7.h),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: MyColorName.white,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return UserMenuContent();
                    },
                  );
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.r), // arrondi
                      child: Image.network(
                        'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                        width: 50.h,
                        height: 50.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Back road ddkfj',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Back road ddkfj',
                          style: GoogleFonts.roboto(
                            color: Colors.black45,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15.h),

              // header de l'application
              Text(
                'Find Your Dream Home',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.1.sp,
                ),
              ),
              SizedBox(height: 20.h),

              // barre de recherche
              Row(
                children: [
                  // Champ bombé (prend tout l'espace)
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.grey.shade100],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(3, 3),
                            blurRadius: 8,
                          ),
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9),
                            offset: const Offset(-3, -3),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Entre vote text',
                          hintStyle: GoogleFonts.roboto(
                            color: MyColorName.greyBorder,
                            fontWeight: FontWeight.w600,
                          ),
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // Élément suivant : exemple d'un bouton rond
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 10.w,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(4.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(2, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Icon(Icons.filter_list, color: Colors.black),
                  ),
                ],
              ),

              // Section de button
              SizedBox(height: 20.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                        horizontal: 15.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Text(
                        'All',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 9.w),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(fadeRoute(const HomeMapsOverViewScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                        horizontal: 15.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Text(
                        'Vue maps',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),
              Text(
                'Recommanded for your',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemBuilder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: MyColorName.white,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return HomeDetails();
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(9.r),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 0.19.sh,
                                    margin: EdgeInsetsGeometry.only(
                                      bottom: 9.h,
                                    ),
                                    padding: EdgeInsetsGeometry.symmetric(
                                      vertical: 5.h,
                                      horizontal: 4.w,
                                    ),
                                    width: MediaQuery.sizeOf(context).width.sw,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7.r),
                                      child: Image.network(
                                        'http://m.ahstatic.com/is/image/accorhotels/HCM_P_8147067:4by3?fmt=jpg&op_usm=1.75,0.3,2,0&resMode=sharp2&iccEmbed=true&icc=sRGB&dpr=on,1.5&wid=335&hei=251&qlt=80',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      margin: EdgeInsets.only(
                                        top: 15.h,
                                        right: 4.w,
                                      ),
                                      decoration: BoxDecoration(
                                        color: MyColorName.cardBorder
                                            .withValues(alpha: 0.3),
                                        borderRadius: BorderRadius.circular(
                                          7.r,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.stars,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsetsGeometry.symmetric(
                                  vertical: 4.h,
                                  horizontal: 8.w,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 5.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            'Hotel bella CAmps',
                                            style: GoogleFonts.roboto(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '1,5k',
                                              style: GoogleFonts.roboto(
                                                color: Colors.grey.shade600,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 0.1.sp,
                                              ),
                                            ),
                                            SizedBox(width: 2.w),
                                            Icon(
                                              Icons
                                                  .star_border_purple500_rounded,
                                              color: Colors.amber,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 7.h),

                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            25.r,
                                          ), // arrondi
                                          child: Image.network(
                                            'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                                            width: 40.h,
                                            height: 40.h,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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

                                    SizedBox(height: 10.h),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            'tincidunt justo elit pulvinar erat',
                                            style: GoogleFonts.roboto(
                                              color: Colors.grey.shade600,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '2000 f',
                                          style: GoogleFonts.roboto(
                                            color: Colors.green,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.home_work_rounded,
                                              color: Colors.grey.shade600,
                                              size: 18.sp,
                                            ),
                                            SizedBox(width: 2.w),
                                            Text(
                                              '12 Rue des Jardins, Cocody, Abidjan',
                                              style: GoogleFonts.roboto(
                                                color: Colors.grey.shade600,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 7.h),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.person_pin,
                                                color: Colors.grey.shade600,
                                                size: 18.sp,
                                              ),
                                              SizedBox(width: 5.w),
                                              Text(
                                                '+225 88-88-99-10',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.grey.shade600,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
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
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
