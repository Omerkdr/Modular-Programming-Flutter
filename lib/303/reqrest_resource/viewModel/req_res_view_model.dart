import 'package:veli_capraz/202/cache/shared_learn_cache.dart';
import 'package:veli_capraz/303/reqrest_resource/model/resource_model.dart';
import 'package:veli_capraz/303/reqrest_resource/service/reqres_service.dart';

import '../../../product/service/project_dio.dart';
import '../../../product/service/project_network_manager.dart';
import '../view/req_res_view.dart';

abstract class ReqresViewModel extends LoadingStatefull<ReqResView>
    with ProjectDioMixin {
  late final IReqresService reqresService;

  List<Data> resources = [];

  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(ProjectNetworkManager.instance.service);
    ProjectNetworkManager.instance.addBaseHeaderToToken('omer');
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
