import 'dart:io';

import 'package:dio/dio.dart';

import '../model/resource_model.dart';

abstract class IReqresService {
  IReqresService(this.dio);
  final Dio dio;
  Future<ResourceModel?> fetchResourceItem();
}

enum _ReqResPath { Resource }

class ReqresService extends IReqresService {
  ReqresService(Dio dio) : super(dio);

  @override
  Future<ResourceModel?> fetchResourceItem() async {
    final response = await dio.get('/${_ReqResPath.Resource.name}');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return ResourceModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
