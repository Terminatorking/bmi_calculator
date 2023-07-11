import 'package:bmicalculator/constanst.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.result,
  });
  final double result;
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
            children: [],
          ),
        ),
      ),
    );
  }
}
