// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../app/auth_bloc/auth_bloc.dart' as _i584;
import '../models/vendor.dart' as _i569;
import '../views/home_page/cubit/home_cubit.dart' as _i607;
import '../views/order_page/cubit/order_cubit.dart' as _i943;
import '../views/vendor_detail_page/cubit/vendor_detail_cubit.dart' as _i237;
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
    gh.factory<_i607.HomeCubit>(() => _i607.HomeCubit());
    gh.factory<_i943.OrderCubit>(() => _i943.OrderCubit());
    gh.singleton<_i584.AuthBloc>(() => _i584.AuthBloc());
    gh.factory<_i237.VendorDetailCubit>(
        () => _i237.VendorDetailCubit(vendor: gh<_i569.Vendor>()));
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
    gh.factory<String>(
      () => registerModules.awsStageBucket,
      instanceName: 'AwsBucket',
      registerFor: {_Stage},
    );
    gh.lazySingleton<_i361.Dio>(
        () => registerModules.getDio(gh<String>(instanceName: 'BaseUrl')));
    return this;
  }
}

class _$RegisterModules extends _i109.RegisterModules {}
