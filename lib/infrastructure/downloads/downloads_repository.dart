import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/api_end_points.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());

        final downloadList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e as Map<String, dynamic>);
        }).toList();

        return Right(downloadList);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
