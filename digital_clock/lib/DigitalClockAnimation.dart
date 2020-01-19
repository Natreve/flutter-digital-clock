import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' show radians;

class DigitalClockAnimation extends StatelessWidget {
  DigitalClockAnimation({Key key, this.controller, this.time, this.theme})
      : flicker = TweenSequence(<TweenSequenceItem<Offset>>[
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(0.27, 0.74))
                .chain(CurveTween(curve: Interval(0, 0, curve: Curves.linear))),
            weight: 1,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.27, 0), end: Offset(0.4, 0.72))
                .chain(CurveTween(
                    curve: Interval(0.05, 0.05, curve: Curves.linear))),
            weight: 5,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.4, 0), end: Offset(0.49, 0.14))
                .chain(CurveTween(
                    curve: Interval(0.10, 0.10, curve: Curves.linear))),
            weight: 10,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.49, 0), end: Offset(0.82, 0.37))
                    .chain(CurveTween(
                        curve: Interval(0.15, 0.15, curve: Curves.linear))),
            weight: 15.000000000000002,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.82, 0), end: Offset(0.11, 0.50))
                    .chain(CurveTween(
                        curve: Interval(0.20, 0.20, curve: Curves.linear))),
            weight: 20,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.11, 0), end: Offset(0.10, 0.81))
                    .chain(CurveTween(
                        curve: Interval(0.25, 0.25, curve: Curves.linear))),
            weight: 25,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.10, 0), end: Offset(0.61, 0.39))
                    .chain(CurveTween(
                        curve: Interval(0.30, 0.30, curve: Curves.linear))),
            weight: 30.000000000000004,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.61, 0), end: Offset(0.36, 0.75))
                    .chain(CurveTween(
                        curve: Interval(0.35, 0.35, curve: Curves.linear))),
            weight: 35.00000000000001,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.36, 0), end: Offset(0.36, 0.76))
                    .chain(CurveTween(
                        curve: Interval(0.40, 0.40, curve: Curves.linear))),
            weight: 40,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.36, 0), end: Offset(0.41, 0.75))
                    .chain(CurveTween(
                        curve: Interval(0.45, 0.45, curve: Curves.linear))),
            weight: 45,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.41, 0), end: Offset(0.18, 0.02))
                    .chain(CurveTween(
                        curve: Interval(0.50, 0.50, curve: Curves.linear))),
            weight: 50,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.18, 0), end: Offset(0.30, 0.05))
                    .chain(CurveTween(
                        curve: Interval(0.55, 0.55, curve: Curves.linear))),
            weight: 55,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.30, 0), end: Offset(0.61, 0.07))
                    .chain(CurveTween(
                        curve: Interval(0.60, 0.60, curve: Curves.linear))),
            weight: 60.00000000000001,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.61, 0), end: Offset(0.25, 0.27))
                    .chain(CurveTween(
                        curve: Interval(0.65, 0.65, curve: Curves.linear))),
            weight: 65,
          ),
          TweenSequenceItem<Offset>(
            tween:
                Tween<Offset>(begin: Offset(0.25, 0), end: Offset(0.79, 0.16))
                    .chain(CurveTween(
                        curve: Interval(0.70, 0.70, curve: Curves.linear))),
            weight: 70.00000000000001,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.79, 0), end: Offset(0.23, 0.5))
                .chain(CurveTween(
                    curve: Interval(0.75, 0.75, curve: Curves.linear))),
            weight: 75,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.23, 0), end: Offset(0.12, 0.6))
                .chain(CurveTween(
                    curve: Interval(0.80, 0.80, curve: Curves.linear))),
            weight: 80,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.12, 0), end: Offset(0.70, 0.3))
                .chain(CurveTween(
                    curve: Interval(0.85, 0.85, curve: Curves.linear))),
            weight: 85,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.70, 0), end: Offset(0.17, 0.3))
                .chain(CurveTween(
                    curve: Interval(0.90, 0.90, curve: Curves.linear))),
            weight: 90,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.95, 0), end: Offset(0.02, 0.4))
                .chain(CurveTween(
                    curve: Interval(0.95, 0.95, curve: Curves.linear))),
            weight: 95,
          ),
          TweenSequenceItem<Offset>(
            tween: Tween<Offset>(begin: Offset(0.02, 0), end: Offset(0.62, 0.4))
                .chain(CurveTween(
                    curve: Interval(1.0, 1.0, curve: Curves.linear))),
            weight: 100,
          ),
        ]).animate(controller),
        flickerScale = Tween<double>(
          begin: 1,
          end: 1.2,
        ).chain(CurveTween(curve: Curves.linear)).animate(controller),
        shake = TweenSequence(
          <TweenSequenceItem<Offset>>[
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 3), end: Offset(3, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 2.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 4), end: Offset(1, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 4.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 4), end: Offset(4, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 6.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 3), end: Offset(4, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 8.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 2), end: Offset(3, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 10.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 2), end: Offset(4, 1))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 12.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 1), end: Offset(1, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 14.000000000000002,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 4), end: Offset(5, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 16.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(5, 2), end: Offset(4, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 18.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 2), end: Offset(3, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 20.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 3), end: Offset(3, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 22.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 2), end: Offset(2, 1))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 24.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 1), end: Offset(1, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 26.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 2), end: Offset(5, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 28.000000000000004,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(5, 3), end: Offset(2, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 30.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 4), end: Offset(2, 5))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 32.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 5), end: Offset(2, 1))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 34.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 1), end: Offset(1, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 36.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 4), end: Offset(4, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 38.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 4), end: Offset(3, 1))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 40.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 1), end: Offset(3, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 42.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 2), end: Offset(5, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 44.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(5, 2), end: Offset(3, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 46.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 3), end: Offset(3, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 48.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 3), end: Offset(1, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 50.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 3), end: Offset(3, 1))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 52.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 1), end: Offset(1, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 54.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 4), end: Offset(2, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 56.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 4), end: Offset(1, 1))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 58.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 1), end: Offset(1, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 60.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 2), end: Offset(4, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 62.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 2), end: Offset(2, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 64.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 3), end: Offset(2, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 66.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 4), end: Offset(3, 5))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 68.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 5), end: Offset(1, 5))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 70.0000000000000,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 5), end: Offset(4, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 72.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 4), end: Offset(2, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 74.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 4), end: Offset(2, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 76.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 2), end: Offset(3, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 78.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 2), end: Offset(2, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 80.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 4), end: Offset(1, 5))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 82.00000000000001,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 5), end: Offset(3, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 84.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 2), end: Offset(5, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 86.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(5, 3), end: Offset(1, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 88.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 2), end: Offset(4, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 90.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(4, 2), end: Offset(1, 2))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 92.00000000000001,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(1, 2), end: Offset(2, 3))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 94.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(2, 3), end: Offset(3, 5))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 96.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 5), end: Offset(3, 5))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 98.0,
            ),
            TweenSequenceItem<Offset>(
              tween: Tween<Offset>(begin: Offset(3, 5), end: Offset(1, 4))
                  .chain(CurveTween(curve: Curves.linear)),
              weight: 100.0,
            ),
            TweenSequenceItem<Offset>(
              tween: ConstantTween<Offset>(Offset(0, 0)),
              weight: 50.0,
            ),
          ],
        ).animate(controller),
        skew = TweenSequence(
          <TweenSequenceItem<double>>[
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 0, end: 0).chain(CurveTween(
                curve: Interval(
                  0.0,
                  0.01,
                  curve: Curves.linear,
                ),
              )),
              weight: 1.0,
            ),
            TweenSequenceItem<double>(
              tween:
                  Tween<double>(begin: 0, end: radians(-60)).chain(CurveTween(
                curve: Interval(
                  0.01,
                  0.01,
                  curve: Curves.linear,
                ),
              )),
              weight: 1.5,
            ),
            TweenSequenceItem<double>(
              tween:
                  Tween<double>(begin: radians(-60), end: 0).chain(CurveTween(
                      curve: Interval(
                0.015,
                0.015,
                curve: Curves.linear,
              ))),
              weight: 2,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 0, end: 0).chain(CurveTween(
                  curve: Interval(
                0.510,
                0.510,
                curve: Curves.linear,
              ))),
              weight: 51,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 0, end: radians(80)).chain(CurveTween(
                  curve: Interval(
                0.520,
                0.520,
                curve: Curves.fastLinearToSlowEaseIn,
              ))),
              weight: 14,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 0, end: 0).chain(CurveTween(
                curve: Interval(
                  0.520,
                  0.520,
                  curve: Curves.linear,
                ),
              )),
              weight: 53,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 0, end: 0).chain(CurveTween(
                curve: Interval(
                  0.530,
                  0.530,
                  curve: Curves.linear,
                ),
              )),
              weight: 53,
            ),
          ],
        ).animate(controller),
        scaleX = TweenSequence(
          <TweenSequenceItem<double>>[
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1, end: 1).chain(CurveTween(
                curve: Interval(
                  0.51,
                  0.51,
                  curve: Curves.linear,
                ),
              )),
              weight: 51.0,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1, end: 1.2).chain(CurveTween(
                curve: Interval(
                  0.52,
                  0.52,
                  curve: Curves.elasticIn,
                ),
              )),
              weight: 52.0,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1.2, end: 1).chain(CurveTween(
                curve: Interval(
                  0.53,
                  0.53,
                  curve: Curves.elasticIn,
                ),
              )),
              weight: 53.0,
            ),
          ],
        ).animate(controller),
        scaleY = TweenSequence(
          <TweenSequenceItem<double>>[
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1, end: 1).chain(CurveTween(
                curve: Interval(
                  0.01,
                  0.01,
                  curve: Curves.linear,
                ),
              )),
              weight: 1,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1, end: 1.5).chain(CurveTween(
                curve: Interval(
                  0.015,
                  0.015,
                  curve: Curves.linear,
                ),
              )),
              weight: 1.5,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1, end: 1).chain(CurveTween(
                curve: Interval(
                  0.020,
                  0.051,
                  curve: Curves.linear,
                ),
              )),
              weight: 53,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1, end: 0.4).chain(CurveTween(
                curve: Interval(
                  0.52,
                  0.52,
                  curve: Curves.linear,
                ),
              )),
              weight: 52,
            ),
            TweenSequenceItem<double>(
              tween: Tween<double>(begin: 1, end: 1).chain(CurveTween(
                curve: Interval(
                  0.53,
                  0.53,
                  curve: Curves.linear,
                ),
              )),
              weight: 53,
            ),
          ],
        ).animate(controller),
        super(key: key);
  final AnimationController controller;
  final Animation<Offset> flicker;
  final Animation<double> flickerScale;
  final Animation<Offset> shake;
  final Animation<double> scaleX;
  final Animation<double> scaleY;
  final Animation<double> skew;
  final Text time;
  final Map theme;
  //StutterA
  Widget _buildDigitalClockAnimation(BuildContext context, Widget child) {
    final fontSize = MediaQuery.of(context).size.width / 6;
    return Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.skewX(skew.value),
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(shake.value.dx, shake.value.dy, 0)
            ..scale(scaleX.value, scaleY.value),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                // left: -3,
                child: ClipRect(
                  child: Align(
                    widthFactor: 1,
                    heightFactor: flicker.value.dx,
                    alignment: Alignment(0, 0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: this.theme['background']),
                      child: Text(
                        this.time.data,
                        style: TextStyle(
                          color: this.theme["text"], //Color(0xffffffff),
                          shadows: <Shadow>[
                            Shadow(
                                color: Color(0xffff0000),
                                offset: Offset(-2, 0)),
                          ],
                          fontSize: fontSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 2,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..scale(flickerScale.value),
                  child: ClipRect(
                    child: Align(
                      heightFactor: flicker.value.dy,
                      alignment: Alignment(0, 0),
                      child: Container(
                        decoration:
                            BoxDecoration(color: this.theme["background"]),
                        child: Text(
                          this.time.data,
                          style: TextStyle(
                            color: this.theme['text'],
                            fontWeight: FontWeight.w700,
                            fontSize: fontSize,
                            shadows: <Shadow>[
                              Shadow(
                                  color: Color(0xff0000ff),
                                  offset: Offset(2, 0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(child: Container(child: this.time)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _buildDigitalClockAnimation,
    );
  }
}
