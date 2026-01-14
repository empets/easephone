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
import '../../feature/authen/data/service/remote/real_time_authen/firebase_remote_service.dart'
    as _i505;
import '../../feature/authen/data/service/remote/real_time_authen/request_repository.dart'
    as _i279;
import '../../feature/authen/domaine/repositorie/I_repository_authen.dart'
    as _i283;
import '../../feature/authen/domaine/usercase/authen_by_mail_usercase.dart'
    as _i933;
import '../../feature/authen/domaine/usercase/create_compte_herb_usercase.dart'
    as _i700;
import '../../feature/authen/domaine/usercase/create_compte_usercase.dart'
    as _i406;
import '../../feature/authen/domaine/usercase/get_user_list_usercase.dart'
    as _i470;
import '../../feature/authen/domaine/usercase/get_user_profile_usercase.dart'
    as _i973;
import '../../feature/authen/domaine/usercase/send_image.dart' as _i452;
import '../../feature/authen/domaine/usercase/signin_usercase.dart' as _i228;
import '../../feature/authen/page/bloc/auth-by-mail/auth_by_mail_bloc.dart'
    as _i622;
import '../../feature/home/data/repository/imp_repository_marchant.dart'
    as _i772;
import '../../feature/home/data/service/firebase/remote.dart' as _i35;
import '../../feature/home/domaine/repository/i_repository_marchant.dart'
    as _i956;
import '../../feature/home/domaine/usercase/dis_like_profile_usercase.dart'
    as _i331;
import '../../feature/home/domaine/usercase/get_actif_compte_information_usercase.dart'
    as _i774;
import '../../feature/home/domaine/usercase/get_like_number.dart' as _i832;
import '../../feature/home/domaine/usercase/liker_profile.dart' as _i21;
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
    gh.lazySingleton<_i345.DatabaseReference>(() => injectableModule.userDb);
    gh.lazySingleton<_i519.Client>(() => injectableModule.httpClient);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => injectableModule.prefs);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => injectableModule.locaDataShared(),
      preResolve: true,
    );
    gh.factory<_i908.AppRouteBloc>(
      () =>
          _i908.AppRouteBloc(sharedPreferences: gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i279.FirebaseRemoteService>(
      () => _i505.ImplFirebaseRemoteService(
        db: gh<_i345.DatabaseReference>(),
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i35.MarchanServiceFirebase>(
      () =>
          _i35.ImpleMarchantServiceFirebase(db: gh<_i345.DatabaseReference>()),
    );
    gh.lazySingleton<_i283.IRepositoryAuthen>(
      () => _i417.RepositoriesAuthenImple(
        firebaseRemoteService: gh<_i279.FirebaseRemoteService>(),
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i956.IRepositoryMarchant>(
      () => _i772.ImpRepositoryMarchant(
        marchanServiceFirebase: gh<_i35.MarchanServiceFirebase>(),
      ),
    );
    gh.factory<_i574.AppRoute>(
      () => _i574.AppRoute(
        appRouteBloc: gh<_i908.AppRouteBloc>(),
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i228.SigninUsercase>(
      () => _i228.SigninUsercase(gh<_i283.IRepositoryAuthen>()),
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
    gh.lazySingleton<_i933.AuthenByMailUsercase>(
      () => _i933.AuthenByMailUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i973.GetUserProfileUsercase>(
      () => _i973.GetUserProfileUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i406.CreateComptemarchantUsercase>(
      () => _i406.CreateComptemarchantUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i470.GetUserListUsercase>(
      () => _i470.GetUserListUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i622.AuthByMailBloc>(
      () => _i622.AuthByMailBloc(
        signinUsercase: gh<_i228.SigninUsercase>(),
        authenByMailUsercase: gh<_i933.AuthenByMailUsercase>(),
      ),
    );
    gh.lazySingleton<_i774.GetActifCompteInformationUsercase>(
      () => _i774.GetActifCompteInformationUsercase(
        gh<_i956.IRepositoryMarchant>(),
      ),
    );
    gh.lazySingleton<_i21.LikeProfileUsercase>(
      () => _i21.LikeProfileUsercase(gh<_i956.IRepositoryMarchant>()),
    );
    gh.lazySingleton<_i331.DisLikeProfileUsercase>(
      () => _i331.DisLikeProfileUsercase(gh<_i956.IRepositoryMarchant>()),
    );
    gh.lazySingleton<_i832.GetLikeListeUsercase>(
      () => _i832.GetLikeListeUsercase(gh<_i956.IRepositoryMarchant>()),
    );
    return this;
  }
}

class _$InjectableModule extends _i809.InjectableModule {}
