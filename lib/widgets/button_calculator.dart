import 'package:calculator_app/theme/constant.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ButtonCalculator extends StatelessWidget {
  final Function() onTap;
  final double width;
  final bool operator;
  final bool equal;
  final String text;
  final Color color;
  const ButtonCalculator({ 
    Key? key,
    required this.onTap,
    this.width = 72,
    this.operator = false,
    this.equal = false,
    required this.text,
    this. color = const Color(0XFF333632)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 66,
        width: width,
        child: Neumorphic(
          style: NeumorphicStyle(
            color: whiteBackGround,
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))
          ),
          child: operator 
          ? Container(
            decoration: BoxDecoration(
              color: equal ? blueColor : whiteBackGround,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: equal ? whiteBackGround : blueColor
              )
            ),
            child: Center(
              child: Text(
                text,
                style: orbitronFont.copyWith(
                  color: color
                ),
              ),
            ),
          )
          : Center(
            child: Text(
              text,
              style: orbitronFont.copyWith(
                color: color
              ),
            ),
          ),
        ),
      ),
    );
  }
}