import 'package:bmi/helpers/bmi_calculator.dart';
import 'package:bmi/views/bmi_data_screen.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({
    Key? key,
    required this.bmi,
    // this.bmiCalculator,
  }) : super(key: key);
  // memanggil hasil bmi
  final double bmi;
  // final BmiCalculator? bmiCalculator;

  // category
  // determineBmiCategory(double bmiValue) {
  //   String category = "";
  //   if (bmiValue < 16.0) {
  //     category = underWeightSevere;
  //   } else if (bmiValue < 17) {
  //     category = underWeightModerate;
  //   } else if (bmiValue < 18.5) {
  //     category = underWeightMild;
  //   } else if (bmiValue < 25) {
  //     category = normal;
  //   } else if (bmiValue < 30) {
  //     category = overWeight;
  //   } else if (bmiValue < 35) {
  //     category = obeseI;
  //   } else if (bmiValue < 40) {
  //     category = obeseII;
  //   } else if (bmiValue >= 40) {
  //     category = obeseIII;
  //   }
  //   return category;
  // }

  // getHealRiskDescription(String categoryName) {
  //   String desc = "";
  //   switch (categoryName) {
  //     case underWeightSevere:
  //     case underWeightModerate:
  //     case underWeightMild:
  //       desc = "Possible nutrional deficiency and osteoporosis.";
  //       break;

  //     case normal:
  //       desc = "Low risk (healty range).";
  //       break;
  //     case overWeight:
  //       desc =
  //           "Moderate risk of developing heart disease, high blood pressure, stroke, diabetes mellitus.";
  //       break;
  //     case obeseI:
  //     case obeseII:
  //     case obeseIII:
  //       desc =
  //           "High risk of developing heart disease, high blood pressure, stroke, diabetes mellitus, Metabolic Syndrome.";
  //       break;

  //     default:
  //   }
  //   return desc;
  // }

  @override
  Widget build(BuildContext context) {
    final BmiCalculator bmiCalculator = BmiCalculator.fromBmiValue(bmi);
    // final bmiCategory =
    bmiCalculator.determineBmiCategory();
    // final bmiDesc =
    bmiCalculator.getHealRiskDescription();

    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              top: 50,
              left: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Result',
                  style: blackTextStyle.copyWith(
                    fontSize: 40,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: BmiCard(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      // (bmiCalculator.bmiCategory == null) ?? "" : bmiCalculator.bmiCategory
                      bmiCalculator.bmiCategory ?? "",
                      style: blackTextStyle.copyWith(
                        fontSize: 30,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: blackTextStyle.copyWith(
                        fontSize: 100,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      bmiCalculator.bmiDescription!,
                      textAlign: TextAlign.center,
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: regular,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: kRed,
            ),
            child: Center(
              child: Text(
                'Re-Calculate',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
