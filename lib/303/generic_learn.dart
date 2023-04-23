class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int caculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }

    int initialValue = admin.role == 1 ? admin.money : 0;
    final sumMoney = users.map((e) => e.money).fold<int>(
        initialValue, (previousValue, element) => previousValue + element);

    final monney = users.fold<int>(initialValue,
        (previousValue, element) => previousValue + element.money);
    return monney;
  }

  showNames(List<GenericUser> users) {}
}

Iterable<OKModel<R>>? showNames<R>(List<GenericUser> users) {
  //   only rol 1 olan
  if (R == String) {
    final names =
        users.map((e) => OKModel<R>(e.name.split('').toList().cast()));
    return names;
  }
  return null;
}

class OKModel<T> {
  final String name = 'okk';
  final List<T> items;

  OKModel(this.items);
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);
}

class AdminUser extends GenericUser {
  final int role;

  AdminUser(super.name, super.id, super.money, this.role);
}
