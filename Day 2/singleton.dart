class LocalStorage {
  // create static variable which can accessed by class name
  static final LocalStorage _singleton = LocalStorage._();

  // create local storage instance private
  LocalStorage._();

  // create static getter to get the instance
  static LocalStorage get instance => _singleton;

  void add() {
    print("Adding to storage");
  }
}

void main(List<String> args) {
  final storage = LocalStorage.instance;
  storage.add();
}
