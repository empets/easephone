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
    gh.lazySingleton<_i956.IRepositoryMarchant>(
      () => _i772.ImpRepositoryMarchant(),
    );
    gh.lazySingleton<_i505.FirebaseRemoteService>(
      () => _i505.ImplFirebaseRemoteService(db: gh<_i345.DatabaseReference>()),
    );
    gh.lazySingleton<_i283.IRepositoryAuthen>(
      () => _i417.RepositoriesAuthenImple(
        firebaseRemoteService: gh<_i505.FirebaseRemoteService>(),
      ),
    );
    gh.lazySingleton<_i933.AuthenByMailUsercase>(
      () => _i933.AuthenByMailUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i228.SigninUsercase>(
      () => _i228.SigninUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i406.CreateComptemarchantUsercase>(
      () => _i406.CreateComptemarchantUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i700.CreateComptHebUsercase>(
      () => _i700.CreateComptHebUsercase(gh<_i283.IRepositoryAuthen>()),
    );
    gh.lazySingleton<_i622.AuthByMailBloc>(
      () => _i622.AuthByMailBloc(
        signinUsercase: gh<_i228.SigninUsercase>(),
        authenByMailUsercase: gh<_i933.AuthenByMailUsercase>(),
      ),
    );
    return this;
  }
}

class _$InjectableModule extends _i809.InjectableModule {}
