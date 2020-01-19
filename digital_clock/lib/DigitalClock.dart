import 'package:digital_clock/DigitalClockAnimation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_clock_helper/model.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;

enum _Element {
  background,
  text,
  shadow,
}

final _lightTheme = {
  _Element.background: Color(0xFFffffff),
  _Element.text: Color(0xFF212121),
  _Element.shadow: Colors.black,
};

final _darkTheme = {
  _Element.background: Color(0xFF212121),
  _Element.text: Color(0xFFffffff),
  _Element.shadow: Color(0xFF174EA6),
};

class DigitalClock extends StatefulWidget {
  const DigitalClock(this.model);

  final ClockModel model;
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock>
    with TickerProviderStateMixin {
  AnimationController _controller;
  DateTime _dateTime = DateTime.now();
  Timer _timer;
  @override
  void initState() {
    super.initState();
    widget.model.addListener(_updateModel);
    _updateTime();
    _updateModel();
    _controller =
        AnimationController(duration: Duration(seconds: 4), vsync: this)
          ..repeat();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void didUpdateWidget(DigitalClock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      oldWidget.model.removeListener(_updateModel);
      widget.model.addListener(_updateModel);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _updateModel() {
    setState(() {
      // Cause the clock to rebuild when the model changes.
    });
  }

  void _updateTime() {
    setState(() {
      _dateTime = DateTime.now();

      _timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: _dateTime.millisecond),
        _updateTime,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).brightness == Brightness.light
        ? _lightTheme
        : _darkTheme;
    final hour =
        DateFormat(widget.model.is24HourFormat ? 'HH' : 'hh').format(_dateTime);
    final minute = DateFormat('mm').format(_dateTime);
    final second = DateFormat('ss').format(_dateTime);
    final fontSize = MediaQuery.of(context).size.width / 6;
    final defaultStyle = TextStyle(
      fontFamily: 'RobotoMono',
      fontWeight: FontWeight.w700,
      color: colors[_Element.text],
      fontSize: fontSize,
    );
    return Scaffold(
      backgroundColor: colors[_Element.background],
      body: Center(
        child: DefaultTextStyle(
          style: defaultStyle,
          child: DigitalClockAnimation(
            controller: _controller,
            time: Text("$hour:$minute:$second"),
            theme: colors,
          ),
        ),
      ),
    );
  }
}
