import 'package:bmi/helpers/bmi_calculator.dart';
import 'package:bmi/views/bmi_result_screen.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BMIDatmicreenState();
}

class _BMIDatmicreenState extends State<BmiDataScreen> {
  int height = 100;
  int weight = 50;
  int age = 20;
  String? gender;

  // double calculateBMI() {
  //   double heightInMeter = height / 100;
  //   // final h = pow(height, 2);
  //   final h = (heightInMeter * heightInMeter);
  //   final bmi = weight / h;

  //   return bmi;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
              left: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BMI Calculator',
                  style: blackTextStyle.copyWith(
                    fontSize: 30,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      gender = "male";
                      setState(() {});
                    },
                    child: BmiCard(
                      borderColor: (gender == 'male') ? kPrimary : kWhite,
                      child: GenderIconText(
                        icon: Icons.male,
                        title: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      gender = "female";
                      setState(() {});
                    },
                    child: BmiCard(
                      borderColor: (gender == 'female') ? kPrimary : kWhite,
                      child: GenderIconText(
                        title: 'Female',
                        icon: Icons.female,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiCard(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "$height",
                      style: blackTextStyle.copyWith(
                        fontSize: 50,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'CM',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  thumbColor: kPrimary,
                  activeColor: kPrimary,
                  inactiveColor: kWhite,
                  min: 80,
                  max: 300,
                  onChanged: (value) {
                    height = value.toInt();
                    setState(() {});
                  },
                )
              ],
            )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: BmiCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '$weight',
                            style: blackTextStyle.copyWith(
                              fontSize: 50,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            'KG',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {
                              weight -= 1;
                              setState(() {});
                            },
                            elevation: 0,
                            shape: CircleBorder(),
                            fillColor: kPrimary,
                            constraints: BoxConstraints.tightFor(
                              width: 40,
                              height: 40,
                            ),
                            child: Icon(
                              Icons.remove,
                              color: kWhite,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawMaterialButton(
                            onPressed: () {
                              weight += 1;
                              setState(() {});
                            },
                            elevation: 0,
                            shape: CircleBorder(),
                            fillColor: kPrimary,
                            constraints: BoxConstraints.tightFor(
                              width: 40,
                              height: 40,
                            ),
                            child: Icon(
                              Icons.add,
                              color: kWhite,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                  child: BmiCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '$age',
                          style: blackTextStyle.copyWith(
                            fontSize: 50,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                age -= 1;
                                setState(() {});
                              },
                              elevation: 0,
                              shape: CircleBorder(),
                              fillColor: kPrimary,
                              constraints: BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                              child: Icon(
                                Icons.remove,
                                color: kWhite,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                age += 1;
                                setState(() {});
                              },
                              elevation: 0,
                              shape: CircleBorder(),
                              fillColor: kPrimary,
                              constraints: BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                              child: Icon(
                                Icons.add,
                                color: kWhite,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // cek nilainya udah masuk belom
              // print(calculateBMI());
              final bmiCalculator = BmiCalculator(
                height: height,
                weight: weight,
              );
              bmiCalculator.calculateBMI();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BmiResultScreen(
                      bmi: bmiCalculator.bmi!,
                    );
                  },
                ),
              );
            },
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: kBlue,
              ),
              child: Center(
                child: Text(
                  'Calculate',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
    this.borderColor = kWhite,
  }) : super(key: key);

  final Widget? child;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: borderColor!,
          width: 4,
        ),
      ),
      child: child,
    );
  }
}

class GenderIconText extends StatelessWidget {
  const GenderIconText({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }
}
