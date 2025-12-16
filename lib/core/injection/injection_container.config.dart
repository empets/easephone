// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_database/firebase_database.dart' as _i345;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../feature/authen/data/repositories/impl_repositories_authen.dart'
    as _i417;
import '../../feature/authen/data/service/remote/real_time_authen/firebase_remote_service.dart'
    as _i505;
import '../../feature/authen/domaine/repositorie/I_repository_authen.dart'
    as _i283;
import '../../feature/authen/domaine/usercase/authen_by_mail_usercase.dart'
    as _i933;
import '../../feature/authen/domaine/usercase/create_compte_herb_usercase.dart'
    as _i700;
import '../../feature/authen/domaine/usercase/create_compte_usercase.dart'
    as _i406;
import '../../feature/authen/domaine/usercase/signin_usercase.dart' as _i228;
import '../../feature/authen/page/bloc/auth-by-mail/auth_by_mail_bloc.dart'
    as _i622;
import '../../feature/home/data/repository/imp_repository_marchant.dart'
    as _i772;
import '../../feature/home/domaine/repository/i_repository_marchant.dart'
    as _i956;
import '../../router/app_route.dart' as _i574;
import '../../router/bloc/app_bloc.dart' as _i908;
import 'injection_container.dart' as _i809;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i345.DatabaseReference>(() => injectableModule.userDb);
    gh.lazySingleton<_i519.Client>(() => injectableModule.httpClient);
    gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => injectableModule.sharedPreferences,
    );
    gh.lazySingleton<_i956.IRepositoryMarchant>(
      () => _i772.ImpRepositoryMarchant(),
    );
    gh.factoryAsync<_i908.AppRouteBloc>(
      () async => _i908.AppRouteBloc(
        sharedPreferences: await getAsync<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i505.FirebaseRemoteService>(
      () => _i505.ImplFirebaseRemoteService(db: gh<_i345.DatabaseReference>()),
    );
    gh.lazySingletonAsync<_i283.IRepositoryAuthen>(
      () async => _i417.RepositoriesAuthenImple(
        sharedPreferences: await getAsync<_i460.SharedPreferences>(),
        firebaseRemoteService: gh<_i505.FirebaseRemoteService>(),
      ),
    );
    gh.factoryAsync<_i574.AppRoute>(
      () async => _i574.AppRoute(
        appRouteBloc: await getAsync<_i908.AppRouteBloc>(),
        sharedPreferences: await getAsync<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingletonAsync<_i228.SigninUsercase>(
      () async =>
          _i228.SigninUsercase(await getAsync<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingletonAsync<_i700.CreateComptHebUsercase>(
      () async => _i700.CreateComptHebUsercase(
        await getAsync<_i283.IRepositoryAuthen>(),
      ),
    );
    gh.lazySingletonAsync<_i933.AuthenByMailUsercase>(
      () async =>
          _i933.AuthenByMailUsercase(await getAsync<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingletonAsync<_i406.CreateComptemarchantUsercase>(
      () async => _i406.CreateComptemarchantUsercase(
        await getAsync<_i283.IRepositoryAuthen>(),
      ),
    );
    gh.lazySingletonAsync<_i622.AuthByMailBloc>(
      () async => _i622.AuthByMailBloc(
        signinUsercase: await getAsync<_i228.SigninUsercase>(),
        authenByMailUsercase: await getAsync<_i933.AuthenByMailUsercase>(),
      ),
    );
    return this;
  }
}

class _$InjectableModule extends _i809.InjectableModule {}
