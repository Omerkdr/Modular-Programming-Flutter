import 'package:flutter_test/flutter_test.dart';
import 'package:veli_capraz/303/generic_learn.dart';

void main() {
  setUp(() {});
  test('User Calculate', () {
    final users = [
      const GenericUser('okk', '11', 10),
      const GenericUser('okk', '11', 10),
      const GenericUser('okk', '11', 20),
    ];

    final userManagement =
        UserManagement(const AdminUser('vadmin', '1', 25, 1));

    final result = userManagement.calculateMoney(users);
    // final respnse = userManagement.showNames<String>(users);

    expect(result, 40);
  });
}
