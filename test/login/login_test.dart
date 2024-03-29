import 'package:veli_capraz/404/bloc/feature/login/model/login_model.dart';
import 'package:veli_capraz/404/bloc/feature/login/service/login_service.dart';
import 'package:veli_capraz/product/service/vexana_network_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ILoginService loginService;
  setUp(() {
    loginService = LoginService(VexanaNetworkManager());
  });
  test('Login Test - eve.holt@reqres.in & cityslicka ', () async {
    final response = await loginService
        .login(LoginModel('eve.holt@reqres.in', 'cityslicka'));
    expect(response?.data, isNotNull);
  });
}
