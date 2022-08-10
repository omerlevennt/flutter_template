import 'package:flutter_test/flutter_test.dart';

main() {
  setUp(() {
    print("Here");
  });

  test("User Login FAil Test", () {
    final isUserLogin = true;
    expect(isUserLogin, isTrue);
  });

  group('User Login Full Test', () {
    //MARK: Test1
    test("User Login FAil Test", () {
      final isUserLogin = true;
      expect(isUserLogin, isTrue);
    });
    //MARK: Test2
    test("User Login FAil Test", () {
      final isUserLogin = true;
      expect(isUserLogin, isTrue);
    });
    //MARK: Test3
    test("User Login FAil Test", () {
      final isUserLogin = true;
      expect(isUserLogin, isTrue);
    });
  });
}
