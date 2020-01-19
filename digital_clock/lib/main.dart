import 'package:flutter/material.dart';

import 'package:flutter_clock_helper/customizer.dart';
import 'package:flutter_clock_helper/model.dart';

import 'package:digital_clock/DigitalClock.dart';

void main() =>
    runApp(ClockCustomizer((ClockModel model) => DigitalClock(model)));
