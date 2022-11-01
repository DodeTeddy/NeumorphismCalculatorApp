import 'package:calculator_app/theme/constant.dart';
import 'package:calculator_app/widgets/button_calculator.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({ Key? key }) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  String textShadow = '88888888';
  double firstNum = 0;
  double secondNum = 0;
  String result = '';
  String resultDisplay = '';
  String operator = '';

  dynamic buttonOnClick(String buttonText){
    if (buttonText == 'AC') {
      firstNum = 0;
      secondNum = 0;
      result = '';
      resultDisplay = '';
    } else if (buttonText == '+' || buttonText == '-' || buttonText == 'x' || buttonText == '/' ) {
      firstNum = double.parse(resultDisplay);
      result = '';
      operator = buttonText;
    } else if (buttonText == '=') {
      secondNum = double.parse(resultDisplay);
      if (operator == '+') {
        result = (firstNum + secondNum).toString();
      }
      if (operator == '-') {
        result = (firstNum - secondNum).toString();
      }
      if (operator == 'x') {
        result = (firstNum * secondNum).toString();
      }
      if (operator == '/') {
        result = (firstNum ~/ secondNum).toString();
      }
    } else if (buttonText == '%') {
      firstNum = double.parse(resultDisplay);
      result = (firstNum / 100).toString();
    } else {
      result = resultDisplay + buttonText;
    }

    setState(() {
      resultDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackGround,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 24, right: 20, left: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Neumorphic(
                  padding: const EdgeInsets.all(5),
                  style: NeumorphicStyle(
                    color: whiteBackGround,
                    shape: NeumorphicShape.concave,
                    boxShape: const NeumorphicBoxShape.circle()
                  ),
                  child: Image.asset(
                    'assets/icons/lightIcon.png',
                    width: 22,
                    height: 22,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, left: 20, right: 20),
              child: Neumorphic(
                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
                style: NeumorphicStyle(
                  color: whiteBackGround,
                  shape: NeumorphicShape.concave,
                ),
                child: Container(
                  width: 335,
                  height: 116,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: blueColor,
                      width: 2
                    )
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          textShadow,
                          style: digitalFont.copyWith(
                            color: blackColor.withOpacity(0.2)
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 47),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            resultDisplay,
                            style: digitalFont.copyWith(
                              color: blackColor
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 65, right: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonCalculator(
                        text: 'AC',
                        onTap: () => buttonOnClick('AC'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '\$',
                        onTap: () => buttonOnClick('\$'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '%',
                        onTap: () => buttonOnClick('%'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '/',
                        color: blueColor,
                        operator: true,
                        onTap: () => buttonOnClick('/'),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonCalculator(
                        text: '7',
                        onTap: () => buttonOnClick('7'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '8',
                        onTap: () => buttonOnClick('8'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '9',
                        onTap: () => buttonOnClick('9'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: 'x',
                        color: blueColor,
                        operator: true,
                        onTap: () => buttonOnClick('x'),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonCalculator(
                        text: '4',
                        onTap: () => buttonOnClick('4'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '5',
                        onTap: () => buttonOnClick('5'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '6',
                        onTap: () => buttonOnClick('6'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '-',
                        color: blueColor,
                        operator: true,
                        onTap: () => buttonOnClick('-'),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonCalculator(
                        text: '3',
                        onTap: () => buttonOnClick('3'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '2',
                        onTap: () => buttonOnClick('2'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '1',
                        onTap: () => buttonOnClick('1'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '+',
                        color: blueColor,
                        operator: true,
                        onTap: () => buttonOnClick('+'),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonCalculator(
                        width: 160,
                        text: '0',
                        onTap: () => buttonOnClick('0'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '.',
                        onTap: () => buttonOnClick('.'),
                      ),
                      const SizedBox(width: 16),
                      ButtonCalculator(
                        text: '=',
                        operator: true,
                        equal: true,
                        color: whiteBackGround,
                        onTap: () => buttonOnClick('='),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}