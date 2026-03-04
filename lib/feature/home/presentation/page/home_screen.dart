import 'dart:developer';
import 'dart:ui';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/check_connexion/checking.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_button.dart';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/real_time_authen/firebase_stream_service.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_profile_list_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_profile_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/send_image.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/create_compte_image.bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/user_list/get_profile_list_bloc.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/dis_like_profile_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_actif_profile_list_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_profile_liked_usecase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/like_profile_actif_usercase.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/check_internet/check_connexion_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/event/like_profile_event.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/get_profile_liked_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/like_profile_actif_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/event/get_profile_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/filter_profile/event/filtre_event.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/user_profile.dart/filter_profile/get_actif_profile_list_bloc.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_detail/home_details.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/menu/user_menu.dart';
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
import 'package:badges/badges.dart' as badges;
import 'dart:math';

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
        // Bloc de profile
        BlocProvider(
          create: (context) =>
              GetProfileBloc(getProfileUsercase: getIt<GetProfileUsercase>())
                ..add(SigninEvent.fetch()),
        ),

        // Bloc de profile list
        BlocProvider(
          create: (context) => GetProfileListBloc(
            getProfileListUsercase: getIt<GetProfileListUsercase>(),
          )..add(SigninEvent.fetch()),
        ),

        // Bloc de profile actif
        BlocProvider(
          create: (context) => GetActifProfileListBloc(
            getActifProfileListUsercase: getIt<GetActifProfileListUsercase>(),
          )..add(FiltreEvent.filtre(filterIsActif: false, adresse: "")),
        ),

        BlocProvider(
          create: (context) => LikeProfileBloc(
            likeProfileActifUsercase: getIt<LikeProfileActifUsercase>(),
            disLikeProfileActifUsercase: getIt<DisLikeProfileActifUsercase>(),
          ),
          //..add(LikeProfileEvent.likeProfile(like: true)),
        ),

        BlocProvider(
          create: (context) => GetProfileLikedBloc(
            getProfileLikedUsecase: getIt<GetProfileLikedUsecase>(),
          )..add(LikeProfileEvent.fetchLike()),
        ),
      ],
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

                BlocBuilder<GetProfileBloc, ApiState<ProfileUser>>(
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

                // // barre de recherche
                Row(
                  children: [
                    // Champ bombé (prend tout l'espace)
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child:
                            BlocBuilder<
                              GetActifProfileListBloc,
                              ApiState<List<ActiveUserProfile>>
                            >(
                              builder: (context, state) {
                                return TextFormField(
                                  controller: searchController,
                                  style: GoogleFonts.roboto(
                                    color: MyColorName.black,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Recherche une zone',
                                    hintStyle: GoogleFonts.roboto(
                                      color: Colors.black45,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    suffixIcon: GestureDetector(
                                      onTap:
                                          state
                                                  is LoadState<
                                                    List<ActiveUserProfile>
                                                  > &&
                                              searchController.text.isEmpty
                                          ? null
                                          : () {
                                              context
                                                  .read<
                                                    GetActifProfileListBloc
                                                  >()
                                                  .add(
                                                    FiltreEvent.filtre(
                                                      filterIsActif: true,
                                                      adresse:
                                                          searchController.text,
                                                    ),
                                                  );
                                              FocusScope.of(context).unfocus();
                                            },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 3.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: MyColorName.greyAvatar,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.search,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
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
                  ],
                ),

                // // Section de button
                SizedBox(height: 20.h),

                SizedBox(height: 10.h),

                SizedBox(height: 10.h),
                Expanded(
                  child: StreamBuilder(
                    stream: FirebaseStreamService().getLikeStream(),
                    builder: (context, asyncSnapshot) {
                      final isLikeProfile = asyncSnapshot.data;

                      return BlocBuilder<GetProfileBloc, ApiState<ProfileUser>>(
                        builder: (context, stateProfile) {
                          if (stateProfile is SuccessState<ProfileUser>) {
                            return BlocBuilder<
                              GetActifProfileListBloc,
                              ApiState<List<ActiveUserProfile>>
                            >(
                              builder: (context, state) {
                                if (state
                                    is LoadState<List<ActiveUserProfile>>) {
                                  return Column(
                                    children: [
                                      SvgPicture.asset(
                                        MyAssets.icons.vector1.path,
                                      ),
                                      // Center(
                                      //   child: CircularProgressIndicator(
                                      //     color: Colors.black,
                                      //   ),
                                      // ),
                                    ],
                                  );
                                }

                                if (state
                                    is SuccessState<List<ActiveUserProfile>>) {
                                  return KeyboardVisibilityBuilder(
                                    builder: (context, isKey) {
                                      if (state.data.isEmpty) {
                                        return SizedBox(
                                          height: 0.6.sh,
                                          // color: MyColorName.black,
                                          child: ListView.builder(
                                            itemCount: 1,

                                            itemBuilder: (context, index) {
                                              return Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: 50.h,
                                                      ),
                                                      child: Lottie.asset(
                                                        MyAssets
                                                            .icons
                                                            .emptyData
                                                            .path,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentGeometry
                                                              .center,
                                                      child: CustomeText(
                                                        texte:
                                                            "Aucune donnée disponible rafechiser la page",

                                                        texteSize: 14.sp,
                                                      ),
                                                    ),

                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: 0.26.sh,
                                                      ),
                                                      child: CustomeButton(
                                                        btnBackground:
                                                            MyColorName.black,
                                                        btnTextColor:
                                                            MyColorName.white,
                                                        btnText: 'Rafrechir',
                                                        btnTextSize: 13.sp,
                                                        onTap: () {
                                                          context
                                                              .read<
                                                                GetActifProfileListBloc
                                                              >()
                                                              .add(
                                                                FiltreEvent.filtre(
                                                                  filterIsActif:
                                                                      false,
                                                                  adresse: "",
                                                                ),
                                                              );
                                                          FocusScope.of(
                                                            context,
                                                          ).unfocus();
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      }
                                      return isKey
                                          ? SizedBox()
                                          : SizedBox(
                                              height: 0.6.sh,
                                              child: ListView.builder(
                                                itemCount: state.data.length,
                                                itemBuilder: (context, index) {
                                                  final profile =
                                                      state.data[index];

                                                  final userLike =
                                                      isLikeProfile?.any(
                                                        (like) =>
                                                            like.postId ==
                                                            profile.userId,
                                                      ) ??
                                                      false;

                                                  final profileLikeNumber =
                                                      isLikeProfile
                                                          ?.where(
                                                            (element) =>
                                                                element
                                                                    .postId ==
                                                                profile.userId,
                                                          )
                                                          .toList();

                                                  return (profile.formOne ==
                                                              'success' &&
                                                          profile.formTwo ==
                                                              'success' &&
                                                          profile.formTherd ==
                                                              'success' &&
                                                          profile.formFive ==
                                                              'Success')
                                                      ? Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                bottom: 15.h,
                                                              ),
                                                          decoration: BoxDecoration(
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
                                                                    height:
                                                                        0.26.sh,
                                                                    margin:
                                                                        EdgeInsetsGeometry.only(
                                                                          bottom:
                                                                              9.h,
                                                                        ),
                                                                    padding: EdgeInsetsGeometry.symmetric(
                                                                      vertical:
                                                                          5.h,
                                                                      horizontal:
                                                                          4.w,
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
                                                                                width: 150,
                                                                                height: 150,
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
                                                                            ),
                                                                        profile
                                                                            .file,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),

                                                                  Positioned(
                                                                    top: 9.h,
                                                                    right: 10.w,
                                                                    child:
                                                                        BlocBuilder<
                                                                          LikeProfileBloc,
                                                                          ApiState<
                                                                            String?
                                                                          >
                                                                        >(
                                                                          builder:
                                                                              (
                                                                                context,
                                                                                state,
                                                                              ) {
                                                                                return SizedBox(
                                                                                  child: GestureDetector(
                                                                                    onTap: () {
                                                                                      context
                                                                                          .read<
                                                                                            LikeProfileBloc
                                                                                          >()
                                                                                          .add(
                                                                                            LikeProfileEvent.likeProfile(
                                                                                              like: true,
                                                                                              userId: profile.userId,
                                                                                            ),
                                                                                          );
                                                                                    },
                                                                                    child:
                                                                                        BlocBuilder<
                                                                                          GetProfileLikedBloc,
                                                                                          ApiState<
                                                                                            List<
                                                                                              LikeProfileResponse
                                                                                            >
                                                                                          >
                                                                                        >(
                                                                                          builder:
                                                                                              (
                                                                                                context,
                                                                                                stateLikeProfile,
                                                                                              ) {
                                                                                                if (stateLikeProfile
                                                                                                    is SuccessState<
                                                                                                      List<
                                                                                                        LikeProfileResponse
                                                                                                      >
                                                                                                    >) {
                                                                                                  return StreamBuilder(
                                                                                                    stream: FirebaseStreamService().getLikeStream(),
                                                                                                    builder:
                                                                                                        (
                                                                                                          context,
                                                                                                          asyncSnapshot,
                                                                                                        ) {
                                                                                                          if (asyncSnapshot.hasData) {
                                                                                                            return Container(
                                                                                                              padding: EdgeInsets.all(
                                                                                                                4.r,
                                                                                                              ),
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: MyColorName.backgroundIvory.withValues(
                                                                                                                  alpha: 0.9,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(
                                                                                                                  8.r,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Row(
                                                                                                                children: [
                                                                                                                  Text(
                                                                                                                    '${profileLikeNumber?.length.toString()}',
                                                                                                                    style: GoogleFonts.roboto(
                                                                                                                      color: Colors.black,
                                                                                                                      fontSize: 12.sp,
                                                                                                                      fontWeight: FontWeight.bold,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Icon(
                                                                                                                    Icons.favorite_rounded,
                                                                                                                    color:
                                                                                                                        userLike ||
                                                                                                                            isLiked
                                                                                                                        ? Colors.red
                                                                                                                        : MyColorName.black,
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            );
                                                                                                          }

                                                                                                          return Container(
                                                                                                            padding: EdgeInsets.all(
                                                                                                              4.r,
                                                                                                            ),
                                                                                                            child: Icon(
                                                                                                              Icons.favorite_rounded,
                                                                                                              color: isLiked
                                                                                                                  ? Colors.red
                                                                                                                  : MyColorName.black,
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                  );
                                                                                                }

                                                                                                return Container(
                                                                                                  padding: EdgeInsets.all(
                                                                                                    4.r,
                                                                                                  ),
                                                                                                  child: Icon(
                                                                                                    Icons.favorite_rounded,
                                                                                                    color: isLiked
                                                                                                        ? Colors.red
                                                                                                        : MyColorName.black,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                        ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                        ),
                                                                  ),

                                                                  Positioned(
                                                                    bottom: 8.h,
                                                                    left: 4.w,
                                                                    right: 4.w,
                                                                    child: Stack(
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadiusGeometry.circular(
                                                                                8,
                                                                              ),
                                                                          child: BackdropFilter(
                                                                            filter: ImageFilter.blur(
                                                                              sigmaX: 8,
                                                                              sigmaY: 8,
                                                                            ),
                                                                            child: Container(
                                                                              padding: EdgeInsets.symmetric(
                                                                                horizontal: 4.w,
                                                                                vertical: 5.h,
                                                                              ),
                                                                              height: 0.11.sh,
                                                                              width: 1.sw,
                                                                              decoration: BoxDecoration(
                                                                                color: MyColorName.white.withValues(
                                                                                  alpha: 0.3,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(
                                                                                  7.r,
                                                                                ),
                                                                              ),

                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(
                                                                                  4.0,
                                                                                ),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Row(
                                                                                      children: [
                                                                                        Text(
                                                                                          profile.specialite,
                                                                                          style: GoogleFonts.roboto(
                                                                                            color: Colors.white,
                                                                                            fontSize: 18.sp,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: 10.w,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 5.h,
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.location_on_rounded,
                                                                                              color: Colors.amber,
                                                                                            ),
                                                                                            Text(
                                                                                              profile.adresse.substring(
                                                                                                0,
                                                                                                20,
                                                                                              ),
                                                                                              style: GoogleFonts.roboto(
                                                                                                color: Colors.white,
                                                                                                fontSize: 12.sp,
                                                                                                fontWeight: FontWeight.w400,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: 10.w,
                                                                                        ),

                                                                                        SizedBox(
                                                                                          width: 3.w,
                                                                                        ),
                                                                                        Row(
                                                                                          children: [
                                                                                            GestureDetector(
                                                                                              onTap: () {
                                                                                                showModalBottomSheet(
                                                                                                  context: context,
                                                                                                  backgroundColor: MyColorName.white,
                                                                                                  isScrollControlled: true,
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
                                                                                                  vertical: 9.h,
                                                                                                  horizontal: 12.w,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: MyColorName.backgroundIvory,
                                                                                                  borderRadius: BorderRadius.circular(
                                                                                                    8.r,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Text(
                                                                                                  "Voir plus ",
                                                                                                  style: GoogleFonts.roboto(
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 12.sp,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
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
                                                                ],
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
                                                    MyAssets
                                                        .icons
                                                        .emptyData
                                                        .path,
                                                  ),
                                                  Align(
                                                    alignment: AlignmentGeometry
                                                        .center,
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
                            );
                          } else {
                            return Container(
                              // height: 0.5.sh,
                              width: double.infinity,
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Center(
                                    child: SizedBox(
                                      width: 300,
                                      height: 150,
                                      child: Stack(
                                        children: [
                                          /// GAUCHE
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  // width: 100,
                                                  // height: 150,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      left: BorderSide(
                                                        color: Colors.green,
                                                      ),
                                                    ),
                                                    // color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                150,
                                                              ),
                                                        ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: AlignmentGeometry
                                                      .bottomLeft,
                                                  child: Container(
                                                    margin: ,
                                                    child: SvgPicture.asset(
                                                      MyAssets.icons.maBox.path,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          /// CENTRE
                                          // Align(
                                          //   alignment: Alignment.bottomCenter,
                                          //   child: Container(
                                          //     width: 100,
                                          //     height: 150,
                                          //     color: Colors.green,
                                          //   ),
                                          // ),

                                          /// DROITE
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              width: 100,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(
                                                    150,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Row(
                                  //   children: [
                                  //     //SEP ONE
                                  //     Container(
                                  //       margin: EdgeInsets.only(top: 10.h),

                                  //       color: Colors.black,
                                  //       child: Column(
                                  //         children: [
                                  //           Container(
                                  //             margin: EdgeInsets.only(
                                  //               left: 30.w,
                                  //             ),
                                  //             child: SvgPicture.asset(
                                  //               MyAssets.icons.vector1.path,
                                  //               height: 50.w,
                                  //               colorFilter: ColorFilter.mode(
                                  //                 Colors.green,
                                  //                 BlendMode.srcIn,
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           badges.Badge(
                                  //             position:
                                  //                 badges.BadgePosition.topEnd(
                                  //                   top: -10,
                                  //                   end: -12,
                                  //                 ),
                                  //             showBadge: true,
                                  //             ignorePointer: false,
                                  //             onTap: () {},
                                  //             badgeContent: Icon(
                                  //               Icons.check,
                                  //               color: Colors.white,
                                  //               size: 10,
                                  //             ),
                                  //             badgeAnimation:
                                  //                 badges
                                  //                     .BadgeAnimation.rotation(
                                  //                   animationDuration: Duration(
                                  //                     seconds: 1,
                                  //                   ),
                                  //                   colorChangeAnimationDuration:
                                  //                       Duration(seconds: 1),
                                  //                   loopAnimation: false,
                                  //                   curve: Curves.fastOutSlowIn,
                                  //                   colorChangeAnimationCurve:
                                  //                       Curves.easeInCubic,
                                  //                 ),
                                  //             child: Container(
                                  //               child: SvgPicture.asset(
                                  //                 MyAssets.icons.maBox.path,
                                  //                 height: 30.w,
                                  //                 colorFilter: ColorFilter.mode(
                                  //                   Colors.white,
                                  //                   BlendMode.srcIn,
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     //SEP TWO
                                  //     Container(
                                  //       height: 0.25.sh,
                                  //       // color: Colors.brown,
                                  //       alignment: Alignment.topCenter,
                                  //       child: Column(
                                  //         children: [
                                  //           Container(
                                  //             color: Colors.black,
                                  //             child: Row(
                                  //               children: [
                                  //                 Container(
                                  //                   margin: EdgeInsets.only(
                                  //                     top: 20.w,
                                  //                   ),
                                  //                   // color: Colors.red,
                                  //                   child: badges.Badge(
                                  //                     position:
                                  //                         badges
                                  //                             .BadgePosition.topEnd(
                                  //                           top: -10,
                                  //                           end: -12,
                                  //                         ),
                                  //                     showBadge: true,
                                  //                     ignorePointer: false,
                                  //                     onTap: () {},
                                  //                     badgeContent: Icon(
                                  //                       Icons.check,
                                  //                       color: Colors.white,
                                  //                       size: 10,
                                  //                     ),
                                  //                     badgeAnimation:
                                  //                         badges
                                  //                             .BadgeAnimation.rotation(
                                  //                           animationDuration:
                                  //                               Duration(
                                  //                                 seconds: 1,
                                  //                               ),
                                  //                           colorChangeAnimationDuration:
                                  //                               Duration(
                                  //                                 seconds: 1,
                                  //                               ),
                                  //                           loopAnimation:
                                  //                               false,
                                  //                           curve: Curves
                                  //                               .fastOutSlowIn,
                                  //                           colorChangeAnimationCurve:
                                  //                               Curves
                                  //                                   .easeInCubic,
                                  //                         ),
                                  //                     child: Container(
                                  //                       child: SvgPicture.asset(
                                  //                         MyAssets
                                  //                             .icons
                                  //                             .internet
                                  //                             .path,
                                  //                         height: 30.w,
                                  //                         colorFilter:
                                  //                             ColorFilter.mode(
                                  //                               Colors.white,
                                  //                               BlendMode.srcIn,
                                  //                             ),
                                  //                       ),
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //                 Container(
                                  //                   height: 30.h,
                                  //                   // color: Colors.red,
                                  //                   margin: EdgeInsets.only(
                                  //                     left: 1.w,
                                  //                   ),
                                  //                   alignment:
                                  //                       Alignment.topLeft,
                                  //                   child: SvgPicture.asset(
                                  //                     MyAssets
                                  //                         .icons
                                  //                         .vector2
                                  //                         .path,
                                  //                     height: 15.w,
                                  //                     colorFilter:
                                  //                         ColorFilter.mode(
                                  //                           Colors.green,
                                  //                           BlendMode.srcIn,
                                  //                         ),
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),

                                  //     // SEP THERD
                                  //     Container(
                                  //       height: 0.25.sh,
                                  //       width: 0.25.sw,
                                  //       color: Colors.black,
                                  //       alignment: Alignment.centerLeft,
                                  //       child: Column(
                                  //         children: [
                                  //           Container(
                                  //             // color: Colors.yellow,
                                  //             child: Row(
                                  //               children: [
                                  //                 Container(
                                  //                   margin: EdgeInsets.only(
                                  //                     top: 20.w,
                                  //                   ),
                                  //                   // color: Colors.red,
                                  //                   child: badges.Badge(
                                  //                     position:
                                  //                         badges
                                  //                             .BadgePosition.topEnd(
                                  //                           top: -10,
                                  //                           end: -12,
                                  //                         ),
                                  //                     showBadge: true,
                                  //                     ignorePointer: false,
                                  //                     onTap: () {},
                                  //                     badgeContent: Icon(
                                  //                       Icons.check,
                                  //                       color: Colors.white,
                                  //                       size: 10,
                                  //                     ),
                                  //                     badgeAnimation:
                                  //                         badges
                                  //                             .BadgeAnimation.rotation(
                                  //                           animationDuration:
                                  //                               Duration(
                                  //                                 seconds: 1,
                                  //                               ),
                                  //                           colorChangeAnimationDuration:
                                  //                               Duration(
                                  //                                 seconds: 1,
                                  //                               ),
                                  //                           loopAnimation:
                                  //                               false,
                                  //                           curve: Curves
                                  //                               .fastOutSlowIn,
                                  //                           colorChangeAnimationCurve:
                                  //                               Curves
                                  //                                   .easeInCubic,
                                  //                         ),
                                  //                     child: Container(
                                  //                       child: SvgPicture.asset(
                                  //                         MyAssets
                                  //                             .icons
                                  //                             .phone
                                  //                             .path,
                                  //                         height: 30.w,
                                  //                         colorFilter:
                                  //                             ColorFilter.mode(
                                  //                               Colors.white,
                                  //                               BlendMode.srcIn,
                                  //                             ),
                                  //                       ),
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //           SizedBox(
                                  //             height: 0.15.sh,
                                  //             // width: 0.15.sw,
                                  //             // color: MyColorName.greenForet,
                                  //             child: Column(
                                  //               crossAxisAlignment:
                                  //                   CrossAxisAlignment.center,
                                  //               children: [
                                  //                 Transform.rotate(
                                  //                   angle: 0.1,
                                  //                   child: Container(
                                  //                     width: 0.1.sw,
                                  //                     margin: EdgeInsets.only(
                                  //                       left: 10.w,
                                  //                     ),
                                  //                     child: SvgPicture.asset(
                                  //                       MyAssets
                                  //                           .icons
                                  //                           .vector3
                                  //                           .path,
                                  //                       height: 50.w,
                                  //                       colorFilter:
                                  //                           ColorFilter.mode(
                                  //                             Colors.green,
                                  //                             BlendMode.srcIn,
                                  //                           ),
                                  //                     ),
                                  //                   ),
                                  //                 ),

                                  //                 Container(
                                  //                   width: 0.3.sw,
                                  //                   // color: Colors.blueAccent,
                                  //                   alignment:
                                  //                       Alignment.centerRight,
                                  //                   child: badges.Badge(
                                  //                     position:
                                  //                         badges
                                  //                             .BadgePosition.topEnd(
                                  //                           top: -10,
                                  //                           end: -12,
                                  //                         ),
                                  //                     showBadge: true,
                                  //                     ignorePointer: false,
                                  //                     onTap: () {},
                                  //                     badgeContent: Icon(
                                  //                       Icons.check,
                                  //                       color: Colors.white,
                                  //                       size: 10,
                                  //                     ),
                                  //                     badgeAnimation:
                                  //                         badges
                                  //                             .BadgeAnimation.rotation(
                                  //                           animationDuration:
                                  //                               Duration(
                                  //                                 seconds: 1,
                                  //                               ),
                                  //                           colorChangeAnimationDuration:
                                  //                               Duration(
                                  //                                 seconds: 1,
                                  //                               ),
                                  //                           loopAnimation:
                                  //                               false,
                                  //                           curve: Curves
                                  //                               .fastOutSlowIn,
                                  //                           colorChangeAnimationCurve:
                                  //                               Curves
                                  //                                   .easeInCubic,
                                  //                         ),
                                  //                     child: Container(
                                  //                       child: SvgPicture.asset(
                                  //                         MyAssets
                                  //                             .icons
                                  //                             .tv
                                  //                             .path,
                                  //                         height: 30.w,
                                  //                         colorFilter:
                                  //                             ColorFilter.mode(
                                  //                               Colors.white,
                                  //                               BlendMode.srcIn,
                                  //                             ),
                                  //                       ),
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),

                                  //     // SEP FOR
                                  //     // Container(
                                  //     //   height: 0.25.sh,
                                  //     //   color: Colors.brown,
                                  //     //   alignment: Alignment.topCenter,
                                  //     //   child: Column(
                                  //     //     children: [
                                  //     //       Container(
                                  //     //         color: Colors.deepOrange,
                                  //     //         child: Row(
                                  //     //           children: [
                                  //     //             Container(
                                  //     //               margin: EdgeInsets.only(
                                  //     //                 top: 20.w,
                                  //     //               ),
                                  //     //               // color: Colors.red,
                                  //     //               child: badges.Badge(
                                  //     //                 position:
                                  //     //                     badges
                                  //     //                         .BadgePosition.topEnd(
                                  //     //                       top: -10,
                                  //     //                       end: -12,
                                  //     //                     ),
                                  //     //                 showBadge: true,
                                  //     //                 ignorePointer: false,
                                  //     //                 onTap: () {},
                                  //     //                 badgeContent: Icon(
                                  //     //                   Icons.check,
                                  //     //                   color: Colors.white,
                                  //     //                   size: 10,
                                  //     //                 ),
                                  //     //                 badgeAnimation:
                                  //     //                     badges
                                  //     //                         .BadgeAnimation.rotation(
                                  //     //                       animationDuration:
                                  //     //                           Duration(
                                  //     //                             seconds: 1,
                                  //     //                           ),
                                  //     //                       colorChangeAnimationDuration:
                                  //     //                           Duration(
                                  //     //                             seconds: 1,
                                  //     //                           ),
                                  //     //                       loopAnimation:
                                  //     //                           false,
                                  //     //                       curve: Curves
                                  //     //                           .fastOutSlowIn,
                                  //     //                       colorChangeAnimationCurve:
                                  //     //                           Curves
                                  //     //                               .easeInCubic,
                                  //     //                     ),
                                  //     //                 child: Container(
                                  //     //                   child: SvgPicture.asset(
                                  //     //                     MyAssets
                                  //     //                         .icons
                                  //     //                         .internet
                                  //     //                         .path,
                                  //     //                     height: 30.w,
                                  //     //                     colorFilter:
                                  //     //                         ColorFilter.mode(
                                  //     //                           Colors.white,
                                  //     //                           BlendMode.srcIn,
                                  //     //                         ),
                                  //     //                   ),
                                  //     //                 ),
                                  //     //               ),
                                  //     //             ),
                                  //     //           ],
                                  //     //         ),
                                  //     //       ),
                                  //     //     ],
                                  //     //   ),
                                  //     // ),
                                  //   ],
                                  // ),

                                  // Positioned(
                                  //   top: 0.05.sh,
                                  //   child: Container(
                                  //     margin: EdgeInsets.only(left: 10.w),
                                  //     padding: EdgeInsets.only(left: 10.h),
                                  //     child: Stack(
                                  //       children: [
                                  //         Container(
                                  //           height: 100.h,
                                  //           width: 100.w,
                                  //           alignment: Alignment.center,
                                  //           color: Colors.grey,
                                  //           child: SvgPicture.asset(
                                  //             MyAssets.icons.vector1.path,
                                  //             height: 58.h,
                                  //             width: 3.w,
                                  //             colorFilter: ColorFilter.mode(
                                  //               Colors.green,
                                  //               BlendMode.srcIn,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         Positioned(
                                  //           top: 68.h,
                                  //           right: 47.w,
                                  //           child: Container(
                                  //             margin: EdgeInsets.only(top: 5.h),
                                  //             child: Column(
                                  //               children: [
                                  //                 badges.Badge(
                                  //                   position:
                                  //                       badges
                                  //                           .BadgePosition.topEnd(
                                  //                         top: -10,
                                  //                         end: -12,
                                  //                       ),
                                  //                   showBadge: true,
                                  //                   ignorePointer: true,
                                  //                   onTap: () {},
                                  //                   badgeContent: Icon(
                                  //                     Icons.check,
                                  //                     color: Colors.white,
                                  //                     size: 10,
                                  //                   ),
                                  //                   badgeStyle:
                                  //                       badges.BadgeStyle(
                                  //                         badgeColor:
                                  //                             Colors.green,
                                  //                       ),
                                  //                   badgeAnimation:
                                  //                       badges
                                  //                           .BadgeAnimation.rotation(
                                  //                         animationDuration:
                                  //                             Duration(
                                  //                               seconds: 1,
                                  //                             ),
                                  //                         colorChangeAnimationDuration:
                                  //                             Duration(
                                  //                               seconds: 1,
                                  //                             ),
                                  //                         loopAnimation: false,
                                  //                         curve: Curves
                                  //                             .fastOutSlowIn,
                                  //                         colorChangeAnimationCurve:
                                  //                             Curves
                                  //                                 .easeInCubic,
                                  //                       ),
                                  //                   child: Container(
                                  //                     margin: EdgeInsets.only(
                                  //                       top: 5.h,
                                  //                     ),
                                  //                     child: SvgPicture.asset(
                                  //                       MyAssets
                                  //                           .icons
                                  //                           .maBox
                                  //                           .path,
                                  //                       height: 20.h,
                                  //                       width: 3.w,
                                  //                       colorFilter:
                                  //                           ColorFilter.mode(
                                  //                             Colors.white,
                                  //                             BlendMode.srcIn,
                                  //                           ),
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),

                                  // Positioned(
                                  //   top: 3,
                                  //   right: 0.29.sw,
                                  //   child: Container(
                                  //     margin: EdgeInsets.only(left: 10.h),
                                  //     padding: EdgeInsets.only(left: 10.h),
                                  //     child: Row(
                                  //       mainAxisAlignment:
                                  //           MainAxisAlignment.center,
                                  //       crossAxisAlignment:
                                  //           CrossAxisAlignment.start,
                                  //       children: [
                                  //         Container(
                                  //           margin: EdgeInsets.only(
                                  //             left: 20.w,
                                  //             top: 10.h,
                                  //           ),
                                  //           child: badges.Badge(
                                  //             position:
                                  //                 badges.BadgePosition.topEnd(
                                  //                   top: -10,
                                  //                   end: -12,
                                  //                 ),
                                  //             showBadge: true,
                                  //             ignorePointer: false,
                                  //             onTap: () {},
                                  //             badgeContent: Icon(
                                  //               Icons.check,
                                  //               color: Colors.white,
                                  //               size: 10,
                                  //             ),
                                  //             badgeAnimation:
                                  //                 badges
                                  //                     .BadgeAnimation.rotation(
                                  //                   animationDuration: Duration(
                                  //                     seconds: 1,
                                  //                   ),
                                  //                   colorChangeAnimationDuration:
                                  //                       Duration(seconds: 1),
                                  //                   loopAnimation: false,
                                  //                   curve: Curves.fastOutSlowIn,
                                  //                   colorChangeAnimationCurve:
                                  //                       Curves.easeInCubic,
                                  //                 ),
                                  //             child: Container(
                                  //               margin: EdgeInsets.only(
                                  //                 top: 5.h,
                                  //               ),
                                  //               child: SvgPicture.asset(
                                  //                 MyAssets.icons.internet.path,
                                  //                 color: Colors.white,
                                  //               ),
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         SvgPicture.asset(
                                  //           MyAssets.icons.vector2.path,
                                  //           height: 20,
                                  //           color: Colors.green,
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),

                                  // Positioned(
                                  //   top: 3.h,
                                  //   right: 0.18.sw,
                                  //   child: Container(
                                  //     margin: EdgeInsets.only(
                                  //       left: 10.h,
                                  //       top: 5.h,
                                  //     ),
                                  //     padding: EdgeInsets.only(left: 10.h),
                                  //     child: Row(
                                  //       mainAxisAlignment:
                                  //           MainAxisAlignment.center,
                                  //       crossAxisAlignment:
                                  //           CrossAxisAlignment.end,
                                  //       children: [
                                  //         Container(
                                  //           margin: EdgeInsets.only(
                                  //             left: 20.w,
                                  //             top: 2.h,
                                  //           ),
                                  // child: badges.Badge(
                                  //   position:
                                  //       badges.BadgePosition.topEnd(
                                  //         top: -10,
                                  //         end: -12,
                                  //       ),
                                  //   showBadge: true,
                                  //   ignorePointer: false,
                                  //   onTap: () {},
                                  //   badgeContent: Icon(
                                  //     Icons.check,
                                  //     color: Colors.white,
                                  //     size: 10,
                                  //   ),
                                  //   badgeAnimation:
                                  //       badges
                                  //           .BadgeAnimation.rotation(
                                  //         animationDuration: Duration(
                                  //           seconds: 1,
                                  //         ),
                                  //         colorChangeAnimationDuration:
                                  //             Duration(seconds: 1),
                                  //         loopAnimation: false,
                                  //         curve: Curves.fastOutSlowIn,
                                  //         colorChangeAnimationCurve:
                                  //             Curves.easeInCubic,
                                  //       ),
                                  //   child: Container(
                                  //     margin: EdgeInsets.only(
                                  //       top: 5.h,
                                  //     ),
                                  //     child: SvgPicture.asset(
                                  //       MyAssets.icons.internet.path,
                                  //       color: Colors.white,
                                  //     ),
                                  //   ),
                                  // ),
                                  // ),
                                  // SvgPicture.asset(
                                  //   MyAssets.icons.vector3.path,
                                  //   height: 50.w,
                                  //   color: Colors.green,
                                  // ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),

                                  // Center(
                                  //   child: CircularProgressIndicator(
                                  //     color: Colors.black,
                                  //   ),
                                  // ),
                                ],
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
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
          create: (context) =>
              GetProfileBloc(getProfileUsercase: getIt<GetProfileUsercase>())
                ..add(SigninEvent.fetch()),
        ),

        BlocProvider(
          create: (context) => CheckConnexionBloc()..add(SigninEvent.fetch()),
        ),

        BlocProvider.value(value: context.read<GetActifProfileListBloc>()),
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
            //log('LOCAL USERID -->> $localkey');
            if (asyncSnapshot.hasData || asyncSnapshot.data != null) {
              return BlocBuilder<GetProfileBloc, ApiState<ProfileUser>>(
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
                                  value: context.read<GetProfileBloc>(),
                                ),
                                BlocProvider.value(
                                  value: context
                                      .read<GetActifProfileListBloc>(),
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
                                                    .undrawToDoListO3jf
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
                                    : ClipOval(
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
                                          errorBuilder: (_, __, ___) => ClipOval(
                                            child: Image.asset(
                                              MyAssets
                                                  .icons
                                                  .profileAvatarPlaceholderLarge
                                                  .path,
                                              fit: BoxFit.contain,
                                              height: 0.08.sh,
                                              width: 0.08.sh,
                                            ),
                                          ),
                                          snapshot.data!.profileImage
                                              .toString(),
                                          fit: BoxFit.cover,
                                          height: 0.08.sh,
                                          width: 0.08.sh,
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
              return BlocBuilder<GetProfileBloc, ApiState<ProfileUser>>(
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
                                  value: context.read<GetProfileBloc>(),
                                ),
                                BlocProvider.value(
                                  value: context
                                      .read<GetActifProfileListBloc>(),
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

class StatusSemiCircle extends StatelessWidget {
  final double radius = 160;
  final double iconSpacing = 35;

  final List<IconData> icons = [Icons.wifi, Icons.phone, Icons.tv];

  StatusSemiCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: radius * 2,
        height: radius + 120,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            /// ARC 3 SEGMENTS
            CustomPaint(
              size: Size(radius * 2, radius),
              painter: ThreeSegmentPainter(),
            ),

            /// ICONES + CHECK
            ...List.generate(3, (index) {
              final angle = pi - (pi / 2) * index;

              final iconRadius = radius - iconSpacing;

              final x = radius + iconRadius * cos(angle);
              final y = radius - iconRadius * sin(angle);

              return Positioned(
                left: x - 25,
                top: y - 25,
                child: Column(
                  children: [
                    /// CHECK
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.check, size: 14, color: Colors.black),
                    ),
                    SizedBox(height: 6),

                    /// ICON
                    Icon(icons[index], color: Colors.white, size: 30),
                  ],
                ),
              );
            }),

            /// IMAGE CENTRALE
            Positioned(
              bottom: 40,
              child: Icon(Icons.router, color: Colors.white, size: 80),
            ),

            /// TEXTE
            Positioned(
              bottom: 0,
              child: Text(
                "Tout fonctionne bien",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThreeSegmentPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;
    final center = Offset(radius, size.height);

    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14
      ..strokeCap = StrokeCap.round;

    final segmentAngle = pi / 3; // 3 segments
    final gap = 0.18; // espace entre segments

    for (int i = 0; i < 3; i++) {
      final start = pi + i * segmentAngle + gap;
      final sweep = segmentAngle - gap * 2;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        start,
        sweep,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CuveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 50);

    path.quadraticBezierTo(
      size.width / 2,
      size.height + 5,
      size.width,
      size.height - 50,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
