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
