import 'package:bmicalculator/constanst.dart';
import 'package:bmicalculator/pages/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelectMale = true;
  bool isSelectFemale = false;
  int age = 19;
  int weight = 70;
  double height = 60.0;
  @override
  Widget build(BuildContext context) {
    double result = 0.0;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ProjectColors.scaffoldColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ProjectColors.colorOfContainer,
          title: const Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          if (!isSelectMale) {
                            isSelectMale = !isSelectMale;
                            isSelectFemale = !isSelectFemale;
                          }
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: size.width / 2.5,
                      height: size.height / 6,
                      decoration: BoxDecoration(
                        color: ProjectColors.colorOfContainer,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.male,
                            size: 70,
                            color: isSelectMale
                                ? Colors.white
                                : ProjectColors.unSelectColor,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isSelectMale
                                  ? Colors.white
                                  : ProjectColors.unSelectColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          if (!isSelectFemale) {
                            isSelectFemale = !isSelectFemale;
                            isSelectMale = !isSelectMale;
                          }
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: size.width / 2.5,
                      height: size.height / 6,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: ProjectColors.colorOfContainer,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.female,
                            size: 70,
                            color: isSelectFemale
                                ? Colors.white
                                : ProjectColors.unSelectColor,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isSelectFemale
                                  ? Colors.white
                                  : ProjectColors.unSelectColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width,
                margin: const EdgeInsets.all(30),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: ProjectColors.colorOfContainer,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " CM",
                          style: TextStyle(
                            color: ProjectColors.unSelectColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider.adaptive(
                      min: 60.0,
                      max: 220.0,
                      activeColor: Colors.white,
                      thumbColor: ProjectColors.red,
                      value: height,
                      onChanged: (value) {
                        setState(
                          () {
                            height = double.parse(value.toStringAsFixed(1));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2.5,
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      color: ProjectColors.colorOfContainer,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " KG",
                              style: TextStyle(
                                color: ProjectColors.unSelectColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  shape: MaterialStateProperty.all(
                                    const CircleBorder(),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 17, 20, 40),
                                  ),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (weight > 1) {
                                        weight -= 1;
                                      }
                                    },
                                  );
                                },
                                child: const Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  shape: MaterialStateProperty.all(
                                    const CircleBorder(),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 17, 20, 40),
                                  ),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      weight += 1;
                                    },
                                  );
                                },
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width / 2.5,
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      color: ProjectColors.colorOfContainer,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  shape: MaterialStateProperty.all(
                                    const CircleBorder(),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 17, 20, 40),
                                  ),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (age > 1) {
                                        age--;
                                      }
                                    },
                                  );
                                },
                                child: const Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  shape: MaterialStateProperty.all(
                                    const CircleBorder(),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 17, 20, 40),
                                  ),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );
                                },
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(30),
                width: size.width,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: ProjectColors.red,
                  ),
                  onPressed: () {
                    result = weight / ((height * height) / 10000);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPage(result: result);
                        },
                      ),
                    );
                  },
                  child: const Text("Calculate Your BMI"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
