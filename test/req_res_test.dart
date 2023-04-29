import 'package:dio/dio.dart';
import 'package:veli_capraz/303/reqrest_resource/model/resource_model.dart';
import 'package:veli_capraz/303/reqrest_resource/service/reqres_service.dart';
import 'package:veli_capraz/303/reqrest_resource/viewModel/req_res_provider.dart';
import 'package:veli_capraz/303/testable/user_save_model.dart';
import 'package:veli_capraz/product/global/resource_context.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks([ReqResProvider])
void main() {
  setUp(() {
    Map<String, Object> values = <String, Object>{'okk': "kurt"};
    SharedPreferences.setMockInitialValues(values);
  });
  test('saveToLocale - Test', () {
    var mockProvider = ReqResProvider(ReqresService(Dio()));
    final resourceContext = ResourceContext();
    final result = mockProvider.saveToLocale(resourceContext, []);

    expect(result, []);
  });

  test('userTest - Test', () async {
    var userViewModel = UserSaveViewModel();
    final result = userViewModel.getReadData("okk", MockStore());

    expect(result, false);
  });

  test('fetchItems - Test', () async {
    var mockProvider = ReqResProvider(MockReqResService());
    final result = await mockProvider.fetchItems();

    expect(result, isNotEmpty);
  });
}

class MockReqResService extends IReqresService {
  MockReqResService() : super(Dio());

  @override
  Future<ResourceModel?> fetchResourceItem() async {
    return ResourceModel(data: [const Data(color: 'a', id: 1)]);
  }
}
