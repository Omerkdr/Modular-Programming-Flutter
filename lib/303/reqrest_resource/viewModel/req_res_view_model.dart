import '../../../202/cache/shared_learn_cache.dart';
import '../../../product/service/project_dio.dart';
import '../../../product/service/project_network_manager.dart';
import '../model/resource_model.dart';
import '../service/reqres_service.dart';
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
