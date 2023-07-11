import 'package:bmicalculator/constanst.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.result,
    required this.size,
  });
  final double result;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMi Calculator"),
          backgroundColor: ProjectColors.colorOfContainer,
        ),
        backgroundColor: ProjectColors.scaffoldColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                width: size.width,
                height: size.height / 2.5,
                decoration: BoxDecoration(
                  color: ProjectColors.colorOfContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result < 18.5
                          ? "Underweight"
                          : (result >= 18.5 && result < 25)
                              ? "Normal"
                              : (result >= 25 && result < 40)
                                  ? "Overweight"
                                  : result >= 40
                                      ? "Obese"
                                      : "",
                      style: TextStyle(
                        color: result < 18.5
                            ? Colors.yellow
                            : (result >= 18.5 && result < 25)
                                ? Colors.green
                                : (result >= 25 && result < 40)
                                    ? Colors.orange
                                    : result >= 40
                                        ? Colors.redAccent
                                        : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      result.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      result < 18.5
                          ? "Underweight BMI range is lower than 18.5"
                          : (result >= 18.5 && result < 25)
                              ? "Normal BMI range is between 18.5 and 25 "
                              : (result >= 25 && result < 40)
                                  ? "Overweight BMI range is between 25 and 40"
                                  : result >= 40
                                      ? "Obese BMI range is bigger than 40"
                                      : "",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      result < 18.5
                          ? "you must eat high calorie foods and gain some weight"
                          : (result >= 18.5 && result < 25)
                              ? "You have a good body and you don't need to do anything"
                              : (result >= 25 && result < 40)
                                  ? "You should eat low calorie foods and do working out"
                                  : result >= 40
                                      ? "You must lose weight. you are in danger"
                                      : "",
                      style: TextStyle(
                        color: result < 18.5
                            ? Colors.yellow
                            : (result >= 18.5 && result < 25)
                                ? Colors.green
                                : (result >= 25 && result < 40)
                                    ? Colors.orange
                                    : result >= 40
                                        ? Colors.redAccent
                                        : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              // Container(
              //   width: size.width,
              //   height: 70,
              //   child: ElevatedButton(child: const),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
