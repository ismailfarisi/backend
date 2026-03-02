// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../app/auth_bloc/auth_bloc.dart' as _i584;
import '../app/multi_vendor_subscription_bloc/multi_vendor_subscription_bloc.dart'
    as _i940;
import '../data_repositories/auth_repo.dart' as _i3;
import '../data_repositories/user_repo.dart' as _i1047;
import '../data_repositories/vendor_repo.dart' as _i617;
import '../data_source/auth_data.dart' as _i223;
import '../data_source/user_data.dart' as _i997;
import '../data_source/vendor_data.dart' as _i917;
import '../models/vendor.dart' as _i569;
import '../utils/onboarding_service.dart' as _i1047;
import '../views/home_page/cubit/home_cubit.dart' as _i607;
import '../views/login/cubit/login_cubit.dart' as _i621;
import '../views/order_page/cubit/order_cubit.dart' as _i943;
import '../views/register_page/cubit/register_cubit.dart' as _i986;
import '../views/subscription_page/cubit/subscription_cubit.dart' as _i926;
import '../views/vendor_detail_page/cubit/vendor_detail_cubit.dart' as _i237;
import '../views/vendor_list_page/cubit/vendor_list_cubit.dart' as _i509;
import 'injectable_module.dart' as _i109;

const String _Stage = 'Stage';
const String _Prod = 'Prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModules = _$RegisterModules();
    gh.factory<_i943.OrderCubit>(() => _i943.OrderCubit());
    gh.singleton<_i940.MultiVendorSubscriptionBloc>(
        () => _i940.MultiVendorSubscriptionBloc());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => registerModules.secureStorage);
    gh.factoryParam<_i237.VendorDetailCubit, _i569.Vendor, dynamic>((
      vendor,
      _,
    ) =>
        _i237.VendorDetailCubit(vendor: vendor));
    gh.factory<String>(
      () => registerModules.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Stage},
    );
    gh.factory<String>(
      () => registerModules.baseProdUrl,
      instanceName: 'BaseUrl',
      registerFor: {_Prod},
    );
    gh.factory<String>(
      () => registerModules.awsProdBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Prod},
    );
    gh.lazySingleton<_i1047.OnboardingService>(
        () => _i1047.OnboardingService(gh<_i558.FlutterSecureStorage>()));
    gh.factory<String>(
      () => registerModules.awsStageBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Stage},
    );
    gh.lazySingleton<_i361.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i3.AuthRepo>(() => _i223.AuthData(dio: gh<_i361.Dio>()));
    gh.singleton<_i584.AuthBloc>(() => _i584.AuthBloc(gh<_i3.AuthRepo>()));
    gh.factory<_i621.LoginCubit>(() => _i621.LoginCubit(gh<_i3.AuthRepo>()));
    gh.factory<_i986.RegisterCubit>(
        () => _i986.RegisterCubit(gh<_i3.AuthRepo>()));
    gh.factory<_i617.VendorRepo>(() => _i917.VendorData(dio: gh<_i361.Dio>()));
    gh.factory<_i1047.UserRepo>(() => _i997.UserData(dio: gh<_i361.Dio>()));
    gh.factory<_i607.HomeCubit>(() => _i607.HomeCubit(
          gh<_i617.VendorRepo>(),
          gh<_i584.AuthBloc>(),
        ));
    gh.factory<_i926.SubscriptionCubit>(
        () => _i926.SubscriptionCubit(gh<_i617.VendorRepo>()));
    gh.factory<_i509.VendorListCubit>(
        () => _i509.VendorListCubit(gh<_i617.VendorRepo>()));
    return this;
  }
}

class _$RegisterModules extends _i109.RegisterModules {}
