// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i5;
import '../../../application/search/search_bloc.dart' as _i8;
import '../../../infrastructure/downloads/downloads_implementation.dart' as _i4;
import '../../../infrastructure/search/search_implementation.dart' as _i7;
import '../../downloads/download_services.dart' as _i3;
import '../../search/search_services.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.DownloadServices>(() => _i4.DownloadImplementation());
  gh.factory<_i5.DownloadsBloc>(
      () => _i5.DownloadsBloc(get<_i3.DownloadServices>()));
  gh.lazySingleton<_i6.SearchService>(() => _i7.SearchImplemention());
  gh.factory<_i8.SearchBloc>(() => _i8.SearchBloc(
        get<_i3.DownloadServices>(),
        get<_i6.SearchService>(),
      ));
  return get;
}
