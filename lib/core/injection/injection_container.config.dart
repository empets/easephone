// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_database/firebase_database.dart' as _i345;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../feature/authen/data/repositories/impl_repositories_authen.dart'
    as _i417;
import '../../feature/authen/data/service/remote/google_authen/service_firebase.dart'
    as _i623;
import '../../feature/authen/data/service/remote/real_time_authen/firebase_remote_service.dart'
    as _i505;
import '../../feature/authen/data/service/remote/real_time_authen/request_repository.dart'
    as _i279;
import '../../feature/authen/domaine/repositorie/I_repository_authen.dart'
    as _i283;
import '../../feature/authen/domaine/usercase/create_compte_check_file.dart'
    as _i473;
import '../../feature/authen/domaine/usercase/create_compte_herb_usercase.dart'
    as _i700;
import '../../feature/authen/domaine/usercase/create_compte_usercase.dart'
    as _i406;
import '../../feature/authen/domaine/usercase/get_profile_list_usercase.dart'
    as _i379;
import '../../feature/authen/domaine/usercase/get_profile_usercase.dart'
    as _i764;
import '../../feature/authen/domaine/usercase/recuperation_authentidication_usercase.dart'
    as _i141;
import '../../feature/authen/domaine/usercase/send_image.dart' as _i452;
import '../../feature/authen/domaine/usercase/signin_usercase.dart' as _i228;
import '../../feature/authen/domaine/usercase/signup_usercase.dart' as _i10;
import '../../feature/authen/page/bloc/authentification/authentification_signin_bloc.dart'
    as _i859;
import '../../feature/authen/page/bloc/authentification/authentification_signup_bloc.dart'
    as _i263;
import '../../feature/authen/page/bloc/authentification/compte_recuperation_bloc.dart'
    as _i987;
import '../../feature/home/data/repository/imp_repository_marchant.dart'
    as _i772;
import '../../feature/home/data/service/firebase/remote.dart' as _i35;
import '../../feature/home/data/service/remot_reposytory.dart' as _i978;
import '../../feature/home/domaine/repository/i_repository_marchant.dart'
    as _i956;
import '../../feature/home/domaine/usercase/dis_like_profile_usercase.dart'
    as _i331;
import '../../feature/home/domaine/usercase/get_actif_profile_list_usercase.dart'
    as _i1029;
import '../../feature/home/domaine/usercase/get_profile_liked_usecase.dart'
    as _i519;
import '../../feature/home/domaine/usercase/like_profile_actif_usercase.dart'
    as _i286;
import '../../router/app_route.dart' as _i574;
import '../../router/bloc/app_bloc.dart' as _i908;
import 'injection_container.dart' as _i809;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.factory<_i908.AppRouteBloc>(() => _i908.AppRouteBloc());
    gh.lazySingleton<_i345.DatabaseReference>(() => injectableModule.userDb);
    gh.lazySingleton<_i519.Client>(() => injectableModule.httpClient);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => injectableModule.prefs);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => injectableModule.locaDataShared(),
      preResolve: true,
    );
    gh.lazySingleton<_i623.GoogleAuthService>(() => _i623.GoogleAuthService());
    gh.factory<_i574.AppRoute>(
      () => _i574.AppRoute(
        appRouteBloc: gh<_i908.AppRouteBloc>(),
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i279.FirebaseRemoteService>(
      () => _i505.ImplFirebaseRemoteService(db: gh<_i345.DatabaseReference>()),
    );
    gh.lazySingleton<_i978.MarchanServiceFirebase>(
      () =>
          _i35.ImpleMarchantServiceFirebase(db: gh<_i345.DatabaseReference>()),
    );
    gh.lazySingleton<_i283.IRepositoryAuthen>(
      () => _i417.RepositoriesAuthenImple(
        firebaseRemoteService: gh<_i279.FirebaseRemoteService>(),
      ),
    );
    gh.lazySingleton<_i956.IRepositoryMarchant>(
      () => _i772.ImpRepositoryMarchant(
        marchanServiceFirebase: gh<_i978.MarchanServiceFirebase>(),
      ),
    );
    gh.lazySingleton<_i519.GetProfileLikedUsecase>(
      () => _i519.GetProfileLikedUsecase(gh<_i956.IRepositoryMarchant>()),
    );
    gh.lazySingleton<_i286.LikeProfileActifUsercase>(
      () => _i286.LikeProfileActifUsercase(gh<_i956.IRepositoryMarchant>()),
    );
    gh.lazySingleton<_i1029.GetActifProfileListUsercase>(
      () => _i1029.GetActifProfileListUsercase(gh<_i956.IRepositoryMarchant>()),
    );
    gh.lazySingleton<_i331.DisLikeProfileActifUsercase>(
      () => _i331.DisLikeProfileActifUsercase(gh<_i956.IRepositoryMarchant>()),
    );
    gh.lazySingleton<_i228.AuthentificationSignInUsercase>(
      () => _i228.AuthentificationSignInUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i700.CreateComptHebUsercase>(
      () => _i700.CreateComptHebUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i452.CreateCoompteSendImageUsercase>(
      () => _i452.CreateCoompteSendImageUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i452.CreateProfileImageUsercase>(
      () => _i452.CreateProfileImageUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i452.CreateAdminitrativeFileUsercase>(
      () =>
          _i452.CreateAdminitrativeFileUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i473.CreateCompteCheckFile>(
      () => _i473.CreateCompteCheckFile(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i406.CreateComptemarchantUsercase>(
      () => _i406.CreateComptemarchantUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i10.AuthentificationSignUpUsercase>(
      () => _i10.AuthentificationSignUpUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i379.GetProfileListUsercase>(
      () => _i379.GetProfileListUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i764.GetProfileUsercase>(
      () => _i764.GetProfileUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i141.RecuperationAuthentidicationUsercase>(
      () => _i141.RecuperationAuthentidicationUsercase(
        gh<_i283.IRepositoryAuthen>(),
      ),
    );
    gh.lazySingleton<_i987.CompteRecuperationBloc>(
      () => _i987.CompteRecuperationBloc(
        recuperationAuthentidication:
            gh<_i141.RecuperationAuthentidicationUsercase>(),
      ),
    );
    gh.lazySingleton<_i263.AuthentificationSignUpBloc>(
      () => _i263.AuthentificationSignUpBloc(
        authenSignUp: gh<_i10.AuthentificationSignUpUsercase>(),
        googleAuthService: gh<_i623.GoogleAuthService>(),
      ),
    );
    gh.lazySingleton<_i859.AuthentificationAuthentificationSignInBloc>(
      () => _i859.AuthentificationAuthentificationSignInBloc(
        authenSignIn: gh<_i228.AuthentificationSignInUsercase>(),
        googleAuthService: gh<_i623.GoogleAuthService>(),
      ),
    );
    return this;
  }
}

class _$InjectableModule extends _i809.InjectableModule {}
