import 'dart:developer';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/check_connexion/checking.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/real_time_authen/firebase_stream_service.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_user_list_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_user_profile_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/send_image.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/create_compte_image.bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/user_list/get_user_list_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_information.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/dis_like_profile_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_actif_compte_information_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_like_number.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/liker_profile.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/check_internet/check_connexion_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/event/like_profile_event.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/get_like_number.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/like_profile_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/event/get_user_profile_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/get_actif_user_profile_information.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_detail/home_details.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/menu/user_menu.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/request_management/presentation/pages/eligibility_test_page.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';

class HomeOverView extends StatefulWidget {
  const HomeOverView({super.key});

  @override
  State<HomeOverView> createState() => _HomeOverViewState();
}

class _HomeOverViewState extends State<HomeOverView> {
  late bool isLiked = false;
  TextEditingController searchController = TextEditingController();
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
          )..add(SigninEvent.filtre(filterIsActif: true, adresse: "")),
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

                  BlocBuilder<GetUserProfileBloc, ApiState<ProfileUser>>(
                    builder: (context, state) {
                      return UserProfile();
                    },
                  ),
                  SizedBox(height: 15.h),

                  // header de l'application
                  Text(
                    'Find Your Dream Home',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 13.sp,
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
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: BlocBuilder<GetActifUserInformationBloc, ApiState<List<ActiveUserProfile>>>(
                            builder: (context, state) {
                              return TextFormField(
                                controller: searchController,
                                style: GoogleFonts.roboto(color: MyColorName.black),
                                decoration: InputDecoration(
                                  hintText: 'Recherche une zone',
                                  hintStyle: GoogleFonts.roboto(
                                    color: Colors.black45,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: state is! LoadingState<List<ActiveUserProfile>> && searchController.text.isNotEmpty ? () {
                                  context.read<GetActifUserInformationBloc>().add(FiltreEvent.filtre(filterIsActif: true, adresse:searchController.text ));
                                } : null,
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              )
                              filled: true,
                              isDense: true,
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          );
                            },
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Élément suivant : exemple d'un bouton rond
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //     vertical: 8.h,
                      //     horizontal: 10.w,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     color: Colors.grey.shade300,
                      //     borderRadius: BorderRadius.circular(4.r),
                      //     // boxShadow: [
                      //     //   BoxShadow(
                      //     //     color: Colors.black.withOpacity(0.2),
                      //     //     offset: const Offset(2, 2),
                      //     //     blurRadius: 6,
                      //     //   ),
                      //     // ],
                      //   ),
                      //   child: const Icon(
                      //     Icons.filter_list,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ],
                  ),

                  // Section de button
                  SizedBox(height: 20.h),

                  // Row(
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () async {},
                  //       child: Container(
                  //         padding: EdgeInsets.symmetric(
                  //           vertical: 8.h,
                  //           horizontal: 15.w,
                  //         ),
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey.shade300,
                  //           borderRadius: BorderRadius.circular(15.r),
                  //           // boxShadow: [
                  //           //   BoxShadow(
                  //           //     color: Colors.black.withOpacity(0.2),
                  //           //     offset: const Offset(2, 2),
                  //           //     blurRadius: 6,
                  //           //   ),
                  //           // ],
                  //         ),
                  //         child: Text(
                  //           'All',
                  //           style: GoogleFonts.roboto(
                  //             color: Colors.black,
                  //             fontSize: 13.sp,
                  //             fontWeight: FontWeight.w500,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(width: 9.w),

                  //     GestureDetector(
                  //       onTap: () {
                  //         // Navigator.of(
                  //         //   context,
                  //         // ).push(fadeRoute(const EligibilityTestPage()));
                  //       },
                  //       child: Container(
                  //         padding: EdgeInsets.symmetric(
                  //           vertical: 8.h,
                  //           horizontal: 15.w,
                  //         ),
                  //         decoration: BoxDecoration(
                  //           color: Colors.black,
                  //           borderRadius: BorderRadius.circular(15.r),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.black.withOpacity(0.2),
                  //               offset: const Offset(2, 2),
                  //               blurRadius: 6,
                  //             ),
                  //           ],
                  //         ),
                  //         child: Text(
                  //           'Vue maps',
                  //           style: GoogleFonts.roboto(
                  //             color: Colors.white,
                  //             fontSize: 13.sp,
                  //             fontWeight: FontWeight.w500,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 10.h),

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
                                  color: Colors.black,
                                ),
                              );
                            }

                            if (state
                                is SuccessState<List<ActiveUserProfile>>) {
                              return KeyboardVisibilityBuilder(
                                builder: (context, isKey) {
                                  return isKey
                                      ? SizedBox()
                                      : SizedBox(
                                          height: 0.6.sh,
                                          child: ListView.builder(
                                            itemCount: state.data.length,
                                            itemBuilder: (context, index) {
                                              final profile = state.data[index];
                                              return (profile.formOne ==
                                                          'success' &&
                                                      profile.formTwo ==
                                                          'success' &&
                                                      profile.formTherd ==
                                                          'success')
                                                  ? Container(
                                                      margin: EdgeInsets.only(
                                                        bottom: 15.h,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Colors.black12,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              9.r,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              Container(
                                                                height: 0.19.sh,
                                                                margin:
                                                                    EdgeInsetsGeometry.only(
                                                                      bottom:
                                                                          9.h,
                                                                    ),
                                                                padding:
                                                                    EdgeInsetsGeometry.symmetric(
                                                                      vertical:
                                                                          5.h,
                                                                      horizontal:
                                                                          4.w,
                                                                    ),
                                                                width:
                                                                    MediaQuery.sizeOf(
                                                                      context,
                                                                    ).width.sw,
                                                                child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        7.r,
                                                                      ),
                                                                  child: Image.network(
                                                                    loadingBuilder:
                                                                        (
                                                                          context,
                                                                          child,
                                                                          loadingProgress,
                                                                        ) {
                                                                          if (loadingProgress ==
                                                                              null)
                                                                            return child;

                                                                          return ImageShimmer(
                                                                            width:
                                                                                150,
                                                                            height:
                                                                                150,
                                                                            borderRadius: BorderRadius.circular(
                                                                              12,
                                                                            ),
                                                                          );
                                                                        },
                                                                    errorBuilder: (_, __, ___) => SvgPicture.asset(
                                                                      MyAssets
                                                                          .icons
                                                                          .undrawDeliveryLocationUm5t
                                                                          .path,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                    profile
                                                                        .file,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),

                                                              BlocBuilder<
                                                                LikeProfileBloc,
                                                                ApiState<
                                                                  String?
                                                                >
                                                              >(
                                                                builder: (context, state) {
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
                                                                          likeListState,
                                                                        ) {
                                                                          if (likeListState
                                                                              is SuccessState<
                                                                                List<
                                                                                  LikeResponse
                                                                                >
                                                                              >) {
                                                                            final userLikeProfile = likeListState.data.where((
                                                                              element,
                                                                            ) {
                                                                              return element.userId ==
                                                                                  profile.userId.toString();
                                                                            });

                                                                            return InkWell(
                                                                              onTap:
                                                                                  state
                                                                                      is LoadState<
                                                                                        String?
                                                                                      >
                                                                                  ? null
                                                                                  : () async {
                                                                                      setState(
                                                                                        () {
                                                                                          isLiked = !isLiked;
                                                                                        },
                                                                                      );

                                                                                      if (userLikeProfile ==
                                                                                          true) {
                                                                                        log(
                                                                                          'Like -->>',
                                                                                        );
                                                                                        context
                                                                                            .read<
                                                                                              LikeProfileBloc
                                                                                            >()
                                                                                            .add(
                                                                                              LikeProfileEvent.likeProfile(
                                                                                                like: true,
                                                                                              ),
                                                                                            );

                                                                                        await Future.delayed(
                                                                                          Duration(
                                                                                            seconds: 1,
                                                                                          ),
                                                                                        ).then(
                                                                                          (
                                                                                            value,
                                                                                          ) {
                                                                                            context
                                                                                                .read<
                                                                                                  GetLikeNumberBloc
                                                                                                >()
                                                                                                .add(
                                                                                                  LikeProfileEvent.likeProfile(
                                                                                                    like: true,
                                                                                                  ),
                                                                                                );
                                                                                          },
                                                                                        );
                                                                                      } else {
                                                                                        log(
                                                                                          'DisLike -->>',
                                                                                        );

                                                                                        if (state
                                                                                            is SuccessState<
                                                                                              String?
                                                                                            >) {
                                                                                          context
                                                                                              .read<
                                                                                                LikeProfileBloc
                                                                                              >()
                                                                                              .add(
                                                                                                LikeProfileEvent.disLikeProfile(
                                                                                                  disLike: false,
                                                                                                  userId: state.data,
                                                                                                ),
                                                                                              );

                                                                                          await Future.delayed(
                                                                                            Duration(
                                                                                              seconds: 1,
                                                                                            ),
                                                                                          ).then(
                                                                                            (
                                                                                              value,
                                                                                            ) {
                                                                                              context
                                                                                                  .read<
                                                                                                    GetLikeNumberBloc
                                                                                                  >()
                                                                                                  .add(
                                                                                                    LikeProfileEvent.likeProfile(
                                                                                                      like: true,
                                                                                                    ),
                                                                                                  );
                                                                                            },
                                                                                          );
                                                                                        }
                                                                                      }
                                                                                    },
                                                                              child: Align(
                                                                                alignment: Alignment.topRight,
                                                                                child: Container(
                                                                                  padding: const EdgeInsets.all(
                                                                                    0.0,
                                                                                  ),
                                                                                  margin: EdgeInsets.only(
                                                                                    top: 15.h,
                                                                                    right: 10.w,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: MyColorName.cardBorder.withValues(
                                                                                      alpha: 0.3,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(
                                                                                      7.r,
                                                                                    ),
                                                                                  ),
                                                                                  child:
                                                                                      BlocBuilder<
                                                                                        GetUserProfileBloc,
                                                                                        ApiState<
                                                                                          ProfileUser
                                                                                        >
                                                                                      >(
                                                                                        builder:
                                                                                            (
                                                                                              context,
                                                                                              profleDataState,
                                                                                            ) {
                                                                                              if (profleDataState
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
                                                                                                        state,
                                                                                                      ) {
                                                                                                        if (state
                                                                                                            is LoadState<
                                                                                                              List<
                                                                                                                LikeResponse
                                                                                                              >
                                                                                                            >) {
                                                                                                          return CircularProgressIndicator(
                                                                                                            color: Colors.transparent,
                                                                                                          );
                                                                                                        } else if (state
                                                                                                            is SuccessState<
                                                                                                              List<
                                                                                                                LikeResponse
                                                                                                              >
                                                                                                            >) {
                                                                                                          final isLiked = likeListState.data.any(
                                                                                                            (
                                                                                                              like,
                                                                                                            ) =>
                                                                                                                like.userId ==
                                                                                                                profleDataState.data.userId,
                                                                                                          );

                                                                                                          return Container(
                                                                                                            padding: EdgeInsets.all(
                                                                                                              4.r,
                                                                                                            ),
                                                                                                            child: Icon(
                                                                                                              Icons.favorite_rounded,
                                                                                                              color: isLiked
                                                                                                                  ? Colors.red
                                                                                                                  : Colors.grey,
                                                                                                            ),
                                                                                                          );
                                                                                                        } else {
                                                                                                          return Container(
                                                                                                            padding: EdgeInsets.all(
                                                                                                              4.r,
                                                                                                            ),
                                                                                                            child: Icon(
                                                                                                              Icons.favorite_rounded,
                                                                                                              color: Colors.grey,
                                                                                                            ),
                                                                                                          );
                                                                                                        }
                                                                                                      },
                                                                                                );
                                                                                              } else {
                                                                                                return SizedBox();
                                                                                              }
                                                                                            },
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          } else {
                                                                            return InkWell(
                                                                              onTap:
                                                                                  state
                                                                                      is LoadState<
                                                                                        String?
                                                                                      >
                                                                                  ? null
                                                                                  : () async {
                                                                                      if (true) {
                                                                                        log(
                                                                                          'Like -->>',
                                                                                        );
                                                                                        context
                                                                                            .read<
                                                                                              LikeProfileBloc
                                                                                            >()
                                                                                            .add(
                                                                                              LikeProfileEvent.likeProfile(
                                                                                                like: true,
                                                                                              ),
                                                                                            );

                                                                                        await Future.delayed(
                                                                                          Duration(
                                                                                            seconds: 1,
                                                                                          ),
                                                                                        ).then(
                                                                                          (
                                                                                            value,
                                                                                          ) {
                                                                                            context
                                                                                                .read<
                                                                                                  GetLikeNumberBloc
                                                                                                >()
                                                                                                .add(
                                                                                                  LikeProfileEvent.likeProfile(
                                                                                                    like: true,
                                                                                                  ),
                                                                                                );
                                                                                          },
                                                                                        );
                                                                                      }
                                                                                    },
                                                                              child: Align(
                                                                                alignment: Alignment.topRight,
                                                                                child: Container(
                                                                                  padding: const EdgeInsets.all(
                                                                                    0.0,
                                                                                  ),
                                                                                  margin: EdgeInsets.only(
                                                                                    top: 15.h,
                                                                                    right: 10.w,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: MyColorName.cardBorder.withValues(
                                                                                      alpha: 0.3,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(
                                                                                      7.r,
                                                                                    ),
                                                                                  ),
                                                                                  child:
                                                                                      BlocBuilder<
                                                                                        GetUserProfileBloc,
                                                                                        ApiState<
                                                                                          ProfileUser
                                                                                        >
                                                                                      >(
                                                                                        builder:
                                                                                            (
                                                                                              context,
                                                                                              profleDataState,
                                                                                            ) {
                                                                                              if (profleDataState
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
                                                                                                        state,
                                                                                                      ) {
                                                                                                        if (state
                                                                                                            is LoadState<
                                                                                                              List<
                                                                                                                LikeResponse
                                                                                                              >
                                                                                                            >) {
                                                                                                          return CircularProgressIndicator(
                                                                                                            color: Colors.transparent,
                                                                                                          );
                                                                                                        } else if (state
                                                                                                            is SuccessState<
                                                                                                              List<
                                                                                                                LikeResponse
                                                                                                              >
                                                                                                            >) {
                                                                                                          final likes = state.data;
                                                                                                          final isLiked = likes.any(
                                                                                                            (
                                                                                                              like,
                                                                                                            ) =>
                                                                                                                like.userId ==
                                                                                                                    profile.userId &&
                                                                                                                like.compter ==
                                                                                                                    1,
                                                                                                          );

                                                                                                          return Container(
                                                                                                            padding: EdgeInsets.all(
                                                                                                              4.r,
                                                                                                            ),
                                                                                                            child: Icon(
                                                                                                              Icons.favorite_rounded,
                                                                                                              color: isLiked
                                                                                                                  ? Colors.red
                                                                                                                  : Colors.grey,
                                                                                                            ),
                                                                                                          );
                                                                                                        } else {
                                                                                                          return Container(
                                                                                                            padding: EdgeInsets.all(
                                                                                                              4.r,
                                                                                                            ),
                                                                                                            child: Icon(
                                                                                                              Icons.favorite_rounded,
                                                                                                              color: Colors.grey,
                                                                                                            ),
                                                                                                          );
                                                                                                        }
                                                                                                      },
                                                                                                );
                                                                                              } else {
                                                                                                return SizedBox();
                                                                                              }
                                                                                            },
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                        },
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),

                                                          GestureDetector(
                                                            onTap: () {
                                                              // showModalBottomSheet(
                                                              //   context: context,
                                                              //   backgroundColor:
                                                              //       MyColorName.white,
                                                              //   isScrollControlled: true,
                                                              //   shape: const RoundedRectangleBorder(
                                                              //     borderRadius:
                                                              //         BorderRadius.vertical(
                                                              //           top:
                                                              //               Radius.circular(
                                                              //                 25,
                                                              //               ),
                                                              //         ),
                                                              //   ),
                                                              //   builder:
                                                              //       (
                                                              //         BuildContext
                                                              //         context,
                                                              //       ) {
                                                              //         return HomeDetails(
                                                              //           profile: profile,
                                                              //         );
                                                              //       },
                                                              // );
                                                            },
                                                            child: Container(
                                                              padding:
                                                                  EdgeInsetsGeometry.symmetric(
                                                                    vertical:
                                                                        4.h,
                                                                    horizontal:
                                                                        8.w,
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
                                                                        alignment:
                                                                            Alignment.bottomLeft,
                                                                        child: Text(
                                                                          profile
                                                                              .specialite,
                                                                          style: GoogleFonts.roboto(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                18.sp,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      BlocBuilder<
                                                                        GetUserProfileBloc,
                                                                        ApiState<
                                                                          ProfileUser
                                                                        >
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
                                                                  SizedBox(
                                                                    height: 9.h,
                                                                  ),

                                                                  Row(
                                                                    children: [
                                                                      // CircleAvatar(
                                                                      //   radius: 22.r,
                                                                      //   child: ClipOval(
                                                                      //     child: Image.network(
                                                                      //       profile.profileImage,
                                                                      //       width: 60.r,
                                                                      //       height: 60.r,
                                                                      //       fit: BoxFit.cover,
                                                                      //     ),
                                                                      //   ),
                                                                      // ),
                                                                      ClipOval(
                                                                        child: Image.network(
                                                                          loadingBuilder:
                                                                              (
                                                                                context,
                                                                                child,
                                                                                loadingProgress,
                                                                              ) {
                                                                                if (loadingProgress ==
                                                                                    null)
                                                                                  return child;

                                                                                return ImageShimmer(
                                                                                  height: 0.03.sh,
                                                                                  width: 0.03.sh,
                                                                                  borderRadius: BorderRadius.circular(
                                                                                    12,
                                                                                  ),
                                                                                );
                                                                              },
                                                                          errorBuilder:
                                                                              (
                                                                                _,
                                                                                __,
                                                                                ___,
                                                                              ) => SvgPicture.asset(
                                                                                MyAssets.icons.undrawDeliveryLocationUm5t.path,

                                                                                fit: BoxFit.cover,
                                                                                height: 0.05.sh,
                                                                                width: 0.05.sh,
                                                                              ),
                                                                          profile
                                                                              .profileImage
                                                                              .toString(),
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          height:
                                                                              0.05.sh,
                                                                          width:
                                                                              0.05.sh,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            8.w,
                                                                      ),
                                                                      Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                profile.name,
                                                                                style: GoogleFonts.roboto(
                                                                                  color: Colors.grey.shade600,
                                                                                  fontSize: 13.sp,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  letterSpacing: 0.1.sp,
                                                                                ),
                                                                              ),

                                                                              Text(
                                                                                profile.email,
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

                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),

                                                                  // Row(
                                                                  //   mainAxisAlignment:
                                                                  //       MainAxisAlignment
                                                                  //           .spaceBetween,
                                                                  //   children: [
                                                                  //     Flexible(
                                                                  //       child: Text(
                                                                  //         '',
                                                                  //         style:
                                                                  //             GoogleFonts.roboto(
                                                                  //               color: Colors
                                                                  //                   .grey
                                                                  //                   .shade600,
                                                                  //               fontSize: 15.sp,
                                                                  //               fontWeight:
                                                                  //                   FontWeight
                                                                  //                       .w500,
                                                                  //             ),
                                                                  //       ),
                                                                  //     ),
                                                                  //     Text(
                                                                  //       '2000 f',
                                                                  //       style:
                                                                  //           GoogleFonts.roboto(
                                                                  //             color:
                                                                  //                 Colors.green,
                                                                  //             fontSize: 20.sp,
                                                                  //             fontWeight:
                                                                  //                 FontWeight
                                                                  //                     .w500,
                                                                  //           ),
                                                                  //     ),
                                                                  //   ],
                                                                  // ),
                                                                  // SizedBox(height: 10.h),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.home_work_rounded,
                                                                                    color: Colors.grey.shade600,
                                                                                    size: 18.sp,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Text(
                                                                                    profile.adresse.substring(
                                                                                      0,
                                                                                      20,
                                                                                    ),
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
                                                                                margin: EdgeInsets.only(
                                                                                  top: 7.h,
                                                                                ),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.person_pin,
                                                                                      color: Colors.grey.shade600,
                                                                                      size: 18.sp,
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 5.w,
                                                                                    ),
                                                                                    Text(
                                                                                      profile.telephone,
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

                                                                      //
                                                                      GestureDetector(
                                                                        onTap: () {
                                                                          Navigator.of(
                                                                            context,
                                                                          ).push(
                                                                            fadeRoute(
                                                                              EligibilityTestPage(
                                                                                profile: profile,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child: Container(
                                                                          padding: EdgeInsets.all(
                                                                            8.h,
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                MyColorName.black,
                                                                            borderRadius: BorderRadius.circular(
                                                                              9.r,
                                                                            ),
                                                                          ),
                                                                          child: CustomeText(
                                                                            texte:
                                                                                'Vue Map',
                                                                            texteSize:
                                                                                12.sp,
                                                                            letterSpacing:
                                                                                0.1.sp,
                                                                            color:
                                                                                MyColorName.cardBorder,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      GestureDetector(
                                                                        onTap: () {
                                                                          showModalBottomSheet(
                                                                            context:
                                                                                context,
                                                                            backgroundColor:
                                                                                MyColorName.white,
                                                                            isScrollControlled:
                                                                                true,
                                                                            shape: const RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.vertical(
                                                                                top: Radius.circular(
                                                                                  25,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            builder:
                                                                                (
                                                                                  BuildContext context,
                                                                                ) {
                                                                                  return HomeDetails(
                                                                                    profile: profile,
                                                                                  );
                                                                                },
                                                                          );
                                                                        },
                                                                        child: Container(
                                                                          padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                9.w,
                                                                            vertical:
                                                                                6.h,
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                            border: Border.all(
                                                                              color: MyColorName.black,
                                                                            ),
                                                                            borderRadius: BorderRadius.circular(
                                                                              9.r,
                                                                            ),
                                                                          ),
                                                                          child: Icon(
                                                                            Icons.arrow_right_alt_sharp,
                                                                            size:
                                                                                18.sp,
                                                                          ),
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
                                                    )
                                                  : SizedBox();
                                            },
                                          ),
                                        );
                                },
                              );
                            } else {
                              return KeyboardVisibilityBuilder(
                                builder: (context, iskeyActif) {
                                  return !iskeyActif
                                      ? Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Lottie.asset(
                                                MyAssets.icons.emptyData.path,
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentGeometry.center,
                                                child: CustomeText(
                                                  texte:
                                                      "Aucune donnée disponible pour l'instant",

                                                  texteSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : SizedBox();
                                },
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

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late bool isOnline;
  late String localkey = '';

  Future<String?> locaData() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString('user_section');
    if (userId != null && userId.trim().isNotEmpty) {
      setState(() {
        localkey = userId;
      });
      return userId;
    }
    return null;
  }

  @override
  void initState() {
    locaData();
    super.initState();
  }

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
          create: (context) =>
              CheckConnexionBloc()..add(SigninEvent.googleAuthen()),
        ),

        BlocProvider.value(value: context.read<GetActifUserInformationBloc>()),
      ],
      child: BlocListener<CheckConnexionBloc, ApiState<bool>>(
        listener: (context, state) {
          if (state is SuccessState<bool>) {}
          if (state is FailedState<bool>) {
            return showAppSnackBar(
              context,
              color: MyColorName.errorRed,
              iconRight: Icons.close,
              message: 'Impossibe de fair cette opération',
            );
          }

          if (isOnline) {
            context.read<CheckConnexionBloc>().add(
              SigninEvent.userIsOnlyne(userIsOnlyne: true),
            );
          } else {
            context.read<CheckConnexionBloc>().add(
              SigninEvent.userIsOnlyne(userIsOnlyne: false),
            );
          }
        },
        child: StreamBuilder(
          stream: FirebaseStreamService().userStream(localkey),
          builder: (context, asyncSnapshot) {
            if (asyncSnapshot.hasData || asyncSnapshot.data != null) {
              return BlocBuilder<GetUserProfileBloc, ApiState<ProfileUser>>(
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
                                  value: context
                                      .read<GetActifUserInformationBloc>(),
                                ),
                                BlocProvider(
                                  create: (context) => CreateProfileImageBloc(
                                    createProfileImage:
                                        getIt<CreateProfileImageUsercase>(),
                                  ),
                                ),
                              ],
                              child: UserMenuContent(
                                userProfileItem: state.data.userId,
                                userPrileImage: asyncSnapshot.data!.profileImage
                                    .toString(),
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
                            child: StreamBuilder(
                              stream: FirebaseStreamService().userStream(
                                localkey,
                              ),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return ClipOval(
                                    child: ImageShimmer(
                                      height: 0.08.sh,
                                      width: 0.08.sh,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  );
                                }

                                if (!snapshot.hasData ||
                                    snapshot.data == null) {
                                  return CircleAvatar(
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
                                  );
                                }

                                return snapshot.data?.profileImage != null
                                    ? ClipOval(
                                        child: Image.network(
                                          loadingBuilder:
                                              (
                                                context,
                                                child,
                                                loadingProgress,
                                              ) {
                                                if (loadingProgress == null)
                                                  return child;

                                                return ImageShimmer(
                                                  height: 0.08.sh,
                                                  width: 0.08.sh,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                );
                                              },
                                          errorBuilder: (_, __, ___) =>
                                              SvgPicture.asset(
                                                MyAssets
                                                    .icons
                                                    .undrawDeliveryLocationUm5t
                                                    .path,
                                                fit: BoxFit.cover,
                                              ),
                                          snapshot.data!.profileImage
                                              .toString(),
                                          fit: BoxFit.cover,
                                          height: 0.08.sh,
                                          width: 0.08.sh,
                                        ),
                                      )
                                    : CircleAvatar(
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
                                      );
                              },
                            ),
                          ),

                          Positioned(
                            right: 3.w,
                            bottom: 5.w,
                            child:
                                BlocBuilder<CheckConnexionBloc, ApiState<bool>>(
                                  builder: (context, state) {
                                    return StreamBuilder<bool>(
                                      stream:
                                          InternetService().connectionStream,
                                      builder: (context, snapshot) {
                                        final hasInternet =
                                            snapshot.data ?? false;
                                        if (!hasInternet) {
                                          isOnline = false;

                                          return Icon(
                                            Icons.circle,
                                            size: 10.h,
                                            color: Colors.red,
                                          );
                                        } else {
                                          isOnline = true;
                                          return Icon(
                                            Icons.circle,
                                            size: 10.h,
                                            color: Colors.greenAccent,
                                          );
                                        }
                                      },
                                    );
                                  },
                                ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              );
            } else {
              return BlocBuilder<GetUserProfileBloc, ApiState<ProfileUser>>(
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
                                  value: context
                                      .read<GetActifUserInformationBloc>(),
                                ),
                                BlocProvider(
                                  create: (context) => CreateProfileImageBloc(
                                    createProfileImage:
                                        getIt<CreateProfileImageUsercase>(),
                                  ),
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
                            child: StreamBuilder<bool>(
                              stream: InternetService().connectionStream,
                              builder: (context, snapshot) {
                                final hasInternet = snapshot.data ?? false;
                                if (!hasInternet) {
                                  isOnline = false;
                                  return Icon(
                                    Icons.circle,
                                    size: 10.h,
                                    color: Colors.red,
                                  );
                                } else {
                                  isOnline = true;

                                  return Icon(
                                    Icons.circle,
                                    size: 10.h,
                                    color: Colors.greenAccent,
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class ImageShimmer extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const ImageShimmer({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
