import 'package:bmicalculator/constanst.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelectMale = true;
  bool isSelectFemale = false;
  @override
  Widget build(BuildContext context) {
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
                          )
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
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
