import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

//Given i am in the slider page
class GivenSliderPage extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final sliderPage = find.byValueKey("startingpage");
    await FlutterDriverUtils.waitForFlutter(
      world.driver,
      timeout: Duration(minutes: 4),
    );
    await FlutterDriverUtils.isPresent(
      world.driver,
      sliderPage,
      timeout: Duration(minutes: 4),
    );
  }

  @override
  RegExp get pattern => RegExp(r'I am in the starting page');
}

//And condition: And I scroll the introduction slider
class AndIScroll extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final introSlider = find.byValueKey("slider");
    final page2 = find.text("Page 2");
    final page3 = find.text("Page 3");
    await FlutterDriverUtils.waitForFlutter(
      world.driver,
      timeout: Duration(minutes: 4),
    );
    await world.driver.scrollUntilVisible(
      introSlider,
      page2,
      dxScroll: -100,
    );
    await world.driver.scrollUntilVisible(
      introSlider,
      page3,
      dxScroll: -100,
    );
  }

  @override
  RegExp get pattern => RegExp(r'I scroll the introduction slider');
}

//And condition: I tap the first login button
class AndITapButton extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final btn = find.text("Login");
    await FlutterDriverUtils.waitForFlutter(
      world.driver,
      timeout: Duration(minutes: 4),
    );
    await FlutterDriverUtils.tap(world.driver, btn);
  }

  @override
  RegExp get pattern => RegExp(r'I press the first login button');
}

//And condition:  I see the login page
class AndLoginPage extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final loginPage = find.byValueKey("login");
    await FlutterDriverUtils.waitForFlutter(
      world.driver,
    );
    await FlutterDriverUtils.isPresent(
      world.driver,
      loginPage,
      timeout: Duration(minutes: 4),
    );
  }

  //Match the REGEX used in feature file
  @override
  RegExp get pattern => RegExp(r'I see the login page');
}

//And condition for entering credentials
class AndEnterCredentials extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final usernameField = find.byValueKey("emailfield");
    final passwordField = find.byValueKey("passwordfield");
    await FlutterDriverUtils.isPresent(
      world.driver,
      usernameField,
      timeout: Duration(minutes: 4),
    );
    await FlutterDriverUtils.enterText(
      world.driver,
      usernameField,
      "test@test.com",
      timeout: Duration(minutes: 4),
    );
    await FlutterDriverUtils.isPresent(
      world.driver,
      passwordField,
      timeout: Duration(minutes: 4),
    );
    await FlutterDriverUtils.enterText(
      world.driver,
      passwordField,
      "test",
      timeout: Duration(minutes: 4),
    );
  }

  @override
  RegExp get pattern => RegExp(r'I enter my credentials');
}
