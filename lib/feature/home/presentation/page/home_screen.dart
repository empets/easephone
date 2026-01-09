import 'dart:developer';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_user_list_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_user_profile_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/user_list/get_user_list_bloc.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/dis_like_profile_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_actif_compte_information_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_like_number.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/liker_profile.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/event/like_profile_event.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/get_like_number.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/like_profile_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/event/get_user_profile_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/get_actif_user_profile_information.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_detail/home_details.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/menu/user_menu.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeOverView extends StatefulWidget {
  const HomeOverView({super.key});

  @override
  State<HomeOverView> createState() => _HomeOverViewState();
}

class _HomeOverViewState extends State<HomeOverView> {
  late bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetUserProfileBloc(
            getUserProfileUsercase: getIt<GetUserProfileUsercase>(),
          )..add(SigninEvent.googleAuthen()),
        ),

        BlocProvider(
          create: (context) => GetUserProfileListBloc(
            getUserListUsercase: getIt<GetUserListUsercase>(),
          )..add(SigninEvent.googleAuthen()),
        ),
        BlocProvider(
          create: (context) => GetActifUserInformationBloc(
            getActifCompteInformationUsercase:
                getIt<GetActifCompteInformationUsercase>(),
          )..add(SigninEvent.googleAuthen()),
        ),

        BlocProvider(
          create: (context) => LikeProfileBloc(
            likeProfileUsercase: getIt<LikeProfileUsercase>(),
            disLikeProfileUsercase: getIt<DisLikeProfileUsercase>(),
          ),
        ),

        BlocProvider(
          create: (context) => GetLikeNumberBloc(
            getLikeListeUsercase: getIt<GetLikeListeUsercase>(),
          )..add(LikeProfileEvent.likeProfile(like: true)),
        ),
      ],
      child: BlocListener<LikeProfileBloc, ApiState<String?>>(
        listener: (context, state) {
          if (state is FailedState<String?>) {
            return showAppSnackBar(
              context,
              color: MyColorName.errorRed,
              iconRight: Icons.close,
              message: 'Impossibe de fair cette opération',
            );
          }
        },
        child: Scaffold(
          backgroundColor: MyColorName.backgroundIvory,
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
                  UserProfile(),
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
                        child: const Icon(
                          Icons.filter_list,
                          color: Colors.black,
                        ),
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
                          // Navigator.of(
                          //   context,
                          // ).push(fadeRoute(const HomeMapsOverViewScreen()));
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
                    child:
                        BlocBuilder<
                          GetActifUserInformationBloc,
                          ApiState<List<ActiveUserProfile>>
                        >(
                          builder: (context, state) {
                            if (state is LoadState<List<ActiveUserProfile>>) {
                              return Center(
                                child: CircularProgressIndicator(
                                  color: Colors.black12,
                                ),
                              );
                            }

                            if (state
                                is SuccessState<List<ActiveUserProfile>>) {
                              return SizedBox(
                                height: 0.6.sh,
                                child: ListView.builder(
                                  itemCount: state.data.length,
                                  itemBuilder: (context, index) {
                                    final profile = state.data[index];
                                    return Container(
                                      margin: EdgeInsets.only(bottom: 15.h),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black12,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          9.r,
                                        ),
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
                                                padding:
                                                    EdgeInsetsGeometry.symmetric(
                                                      vertical: 5.h,
                                                      horizontal: 4.w,
                                                    ),
                                                width: MediaQuery.sizeOf(
                                                  context,
                                                ).width.sw,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        7.r,
                                                      ),
                                                  child: Image.network(
                                                    profile.file,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),

                                              // BlocBuilder<
                                              //   LikeProfileBloc,
                                              //   ApiState<String?>
                                              // >(
                                              //   builder: (context, state) {
                                              //     return InkWell(
                                              //       onTap:
                                              //           state
                                              //               is LoadState<
                                              //                 String?
                                              //               >
                                              //           ? null
                                              //           : () async {
                                              //               setState(() {
                                              //                 isLiked =
                                              //                     !isLiked;
                                              //               });

                                              //               if (isLiked) {
                                              //                 log('Like -->>');
                                              //                 context
                                              //                     .read<
                                              //                       LikeProfileBloc
                                              //                     >()
                                              //                     .add(
                                              //                       LikeProfileEvent.likeProfile(
                                              //                         like:
                                              //                             true,
                                              //                       ),
                                              //                     );
                                              //                 await Future.delayed(
                                              //                   Duration(
                                              //                     seconds: 1,
                                              //                   ),
                                              //                 ).then((value) {
                                              //                   context
                                              //                       .read<
                                              //                         GetLikeNumberBloc
                                              //                       >()
                                              //                       .add(
                                              //                         LikeProfileEvent.likeProfile(
                                              //                           like:
                                              //                               true,
                                              //                         ),
                                              //                       );
                                              //                 });
                                              //               } else {
                                              //                 log(
                                              //                   'DisLike -->>',
                                              //                 );

                                              //                 context
                                              //                     .read<
                                              //                       LikeProfileBloc
                                              //                     >()
                                              //                     .add(
                                              //                       LikeProfileEvent.disLikeProfile(
                                              //                         disLike:
                                              //                             false,
                                              //                       ),
                                              //                     );

                                              //                 await Future.delayed(
                                              //                   Duration(
                                              //                     seconds: 1,
                                              //                   ),
                                              //                 ).then((value) {
                                              //                   context
                                              //                       .read<
                                              //                         GetLikeNumberBloc
                                              //                       >()
                                              //                       .add(
                                              //                         LikeProfileEvent.likeProfile(
                                              //                           like:
                                              //                               true,
                                              //                         ),
                                              //                       );
                                              //                 });
                                              //               }
                                              //             },
                                              //       child: Align(
                                              //         alignment:
                                              //             Alignment.topRight,
                                              //         child: Container(
                                              //           padding:
                                              //               const EdgeInsets.all(
                                              //                 0.0,
                                              //               ),
                                              //           margin: EdgeInsets.only(
                                              //             top: 15.h,
                                              //             right: 10.w,
                                              //           ),
                                              //           decoration: BoxDecoration(
                                              //             color: MyColorName
                                              //                 .cardBorder
                                              //                 .withValues(
                                              //                   alpha: 0.3,
                                              //                 ),
                                              //             borderRadius:
                                              //                 BorderRadius.circular(
                                              //                   7.r,
                                              //                 ),
                                              //           ),
                                              //           child:
                                              //               BlocBuilder<
                                              //                 GetUserProfileBloc,
                                              //                 ApiState<
                                              //                   ProfileUser
                                              //                 >
                                              //               >(
                                              //                 builder:
                                              //                     (
                                              //                       context,
                                              //                       profleDataState,
                                              //                     ) {
                                              //                       if (profleDataState
                                              //                           is SuccessState<
                                              //                             ProfileUser
                                              //                           >) {
                                              //                         return BlocBuilder<
                                              //                           GetLikeNumberBloc,
                                              //                           ApiState<
                                              //                             List<
                                              //                               LikeResponse
                                              //                             >
                                              //                           >
                                              //                         >(
                                              //                           builder:
                                              //                               (
                                              //                                 context,
                                              //                                 state,
                                              //                               ) {
                                              //                                 if (state
                                              //                                     is LoadState<
                                              //                                       List<
                                              //                                         LikeResponse
                                              //                                       >
                                              //                                     >) {
                                              //                                   return CircularProgressIndicator(
                                              //                                     color: Colors.transparent,
                                              //                                   );
                                              //                                 } else if (state
                                              //                                     is SuccessState<
                                              //                                       List<
                                              //                                         LikeResponse
                                              //                                       >
                                              //                                     >) {
                                              //                                   final likes = state.data;
                                              //                                   final currentUserId = profleDataState.data.userId;
                                              //                                   final isLiked = likes.any(
                                              //                                     (
                                              //                                       like,
                                              //                                     ) =>
                                              //                                         like.userId ==
                                              //                                             profile.user &&
                                              //                                         like.compter ==
                                              //                                             1,
                                              //                                   );

                                              //                                   return Container(
                                              //                                     padding: EdgeInsets.all(
                                              //                                       4.r,
                                              //                                     ),
                                              //                                     child: Icon(
                                              //                                       Icons.favorite_rounded,
                                              //                                       color: isLiked
                                              //                                           ? Colors.red
                                              //                                           : Colors.grey,
                                              //                                     ),
                                              //                                   );
                                              //                                 } else {
                                              //                                   return Container(
                                              //                                     padding: EdgeInsets.all(
                                              //                                       4.r,
                                              //                                     ),
                                              //                                     child: Icon(
                                              //                                       Icons.favorite_rounded,
                                              //                                       color: Colors.grey,
                                              //                                     ),
                                              //                                   );
                                              //                                 }
                                              //                               },
                                              //                         );
                                              //                       } else {
                                              //                         return SizedBox();
                                              //                       }
                                              //                     },
                                              //               ),
                                              //         ),
                                              //       ),
                                              //     );
                                              //   },
                                              // ),
                                            ],
                                          ),

                                          GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                backgroundColor:
                                                    MyColorName.white,
                                                isScrollControlled: true,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                  25,
                                                                ),
                                                          ),
                                                    ),
                                                builder:
                                                    (BuildContext context) {
                                                      return HomeDetails(
                                                        profile: profile,
                                                      );
                                                    },
                                              );
                                            },
                                            child: Container(
                                              padding:
                                                  EdgeInsetsGeometry.symmetric(
                                                    vertical: 4.h,
                                                    horizontal: 8.w,
                                                  ),
                                              child: Column(
                                                children: [
                                                  // SizedBox(height: 2.h),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Text(
                                                          profile.name,
                                                          style:
                                                              GoogleFonts.roboto(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                fontSize: 18.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      BlocBuilder<
                                                        GetUserProfileBloc,
                                                        ApiState<ProfileUser>
                                                      >(
                                                        builder:
                                                            (
                                                              context,
                                                              profileDataState,
                                                            ) {
                                                              if (profileDataState
                                                                  is SuccessState<
                                                                    ProfileUser
                                                                  >) {
                                                                return BlocBuilder<
                                                                  GetLikeNumberBloc,
                                                                  ApiState<
                                                                    List<
                                                                      LikeResponse
                                                                    >
                                                                  >
                                                                >(
                                                                  builder:
                                                                      (
                                                                        context,
                                                                        likeState,
                                                                      ) {
                                                                        if (likeState
                                                                            is SuccessState<
                                                                              List<
                                                                                LikeResponse
                                                                              >
                                                                            >) {
                                                                          final likeNumber = likeState.data.where(
                                                                            (
                                                                              like,
                                                                            ) =>
                                                                                like.compter ==
                                                                                1,
                                                                          );

                                                                          return Row(
                                                                            children: [
                                                                              Text(
                                                                                likeNumber.length.toString(),
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.grey.shade600,
                                                                                  fontSize: 14.sp,
                                                                                  fontWeight: FontWeight.w700,
                                                                                  letterSpacing: 0.1.sp,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 2.w,
                                                                              ),
                                                                              Icon(
                                                                                likeNumber ==
                                                                                        0
                                                                                    ? Icons.star_border_rounded
                                                                                    : Icons.star_half_rounded,
                                                                                color: Colors.amber,
                                                                              ),
                                                                            ],
                                                                          );
                                                                        } else {
                                                                          return Row(
                                                                            children: [
                                                                              Text(
                                                                                '0',
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.grey.shade600,
                                                                                  fontSize: 14.sp,
                                                                                  fontWeight: FontWeight.w700,
                                                                                  letterSpacing: 0.1.sp,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 2.w,
                                                                              ),
                                                                              Icon(
                                                                                Icons.star_border_rounded,
                                                                                color: Colors.amber,
                                                                              ),
                                                                            ],
                                                                          );
                                                                        }
                                                                      },
                                                                );
                                                              } else {
                                                                return SizedBox();
                                                              }
                                                            },
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 9.h),
                                                  BlocBuilder<
                                                    GetUserProfileListBloc,
                                                    ApiState<List<ProfileUser>>
                                                  >(
                                                    builder:
                                                        (
                                                          context,
                                                          userPriflesListState,
                                                        ) {
                                                          if (userPriflesListState
                                                              is SuccessState<
                                                                List<
                                                                  ProfileUser
                                                                >
                                                              >) {
                                                            final itemsProfileLamda =
                                                                userPriflesListState.data.where((
                                                                  element,
                                                                ) {
                                                                  return element
                                                                          .userId ==
                                                                      profile
                                                                          .user
                                                                          .toString();
                                                                }).toList();
                                                            return Row(
                                                              children: userPriflesListState
                                                                  .data
                                                                  .map(
                                                                    (x) =>
                                                                        x.userId ==
                                                                            profile.user
                                                                        ? Row(
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
                                                                              SizedBox(
                                                                                width: 8.w,
                                                                              ),
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
                                                                                        "Matching your Selected area",
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
                                                                          )
                                                                        : SizedBox(),
                                                                  )
                                                                  .toList(),
                                                            );
                                                          } else {
                                                            return SizedBox();
                                                          }
                                                        },
                                                  ),
                                                  SizedBox(height: 10.h),

                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          'tincidunt justo elit pulvinar erat',
                                                          style:
                                                              GoogleFonts.roboto(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                fontSize: 15.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        '2000 f',
                                                        style:
                                                            GoogleFonts.roboto(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 20.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                            Icons
                                                                .home_work_rounded,
                                                            color: Colors
                                                                .grey
                                                                .shade600,
                                                            size: 18.sp,
                                                          ),
                                                          SizedBox(width: 5.w),
                                                          Text(
                                                            profile.adresse,
                                                            style:
                                                                GoogleFonts.roboto(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600,
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),

                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          top: 7.h,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.person_pin,
                                                              color: Colors
                                                                  .grey
                                                                  .shade600,
                                                              size: 18.sp,
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Text(
                                                              profile.telephone,
                                                              style: GoogleFonts.roboto(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                fontSize: 12.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
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
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            } else {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentGeometry.center,
                                    child: CustomeText(
                                      texte: 'Aucune donnée',
                                      color: MyColorName.black,
                                      texteSize: 18.sp,
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetUserProfileBloc(
            getUserProfileUsercase: getIt<GetUserProfileUsercase>(),
          )..add(SigninEvent.googleAuthen()),
        ),

        BlocProvider.value(value: context.read<GetActifUserInformationBloc>()),
      ],
      child: BlocBuilder<GetUserProfileBloc, ApiState<ProfileUser>>(
        builder: (context, state) {
          if (state is SuccessState<ProfileUser>) {
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
                  builder: (BuildContext _) {
                    return MultiBlocProvider(
                      providers: [
                        BlocProvider.value(
                          value: context.read<GetUserProfileBloc>(),
                        ),
                        BlocProvider.value(
                          value: context.read<GetActifUserInformationBloc>(),
                        ),
                      ],
                      child: UserMenuContent(
                        userProfileItem: state.data.userId,
                      ),
                    );
                  },
                );
              },
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.r),
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColorName.cardBorder),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 27.r,
                      backgroundColor: MyColorName.greyAvatar,
                      child: Text(
                        state.data.email.substring(0, 2),
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3.w,
                    bottom: 5.w,
                    child: Icon(Icons.circle, size: 10.h, color: Colors.green),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
