import '../shared/theme.dart';

class BmiCalculator {
  int? height;
  int? weight;
  double? bmi;
  String? bmiCategory;
  String? bmiDescription;

  BmiCalculator({
    required this.height,
    required this.weight,
  });
  BmiCalculator.fromBmiValue(this.bmi) {
    // this.bmi = bmi;
  }

  double calculateBMI() {
    double heightInMeter = height! / 100;
    // final h = pow(height, 2);
    final h = (heightInMeter * heightInMeter);
    bmi = weight! / h;

    return bmi!;
  }

  determineBmiCategory() {
    String category = "";
    if (bmi! < 16.0) {
      category = underWeightSevere;
    } else if (bmi! < 17) {
      category = underWeightModerate;
    } else if (bmi! < 18.5) {
      category = underWeightMild;
    } else if (bmi! < 25) {
      category = normal;
    } else if (bmi! < 30) {
      category = overWeight;
    } else if (bmi! < 35) {
      category = obeseI;
    } else if (bmi! < 40) {
      category = obeseII;
    } else if (bmi! >= 40) {
      category = obeseIII;
    }
    bmiCategory = category;
    return bmiCategory;
  }

  getHealRiskDescription() {
    String desc = "";
    switch (bmiCategory!) {
      case underWeightSevere:
      case underWeightModerate:
      case underWeightMild:
        desc = "Possible nutrional deficiency and osteoporosis.";
        break;

      case normal:
        desc = "Low risk (healty range).";
        break;
      case overWeight:
        desc =
            "Moderate risk of developing heart disease, high blood pressure, stroke, diabetes mellitus.";
        break;
      case obeseI:
      case obeseII:
      case obeseIII:
        desc =
            "High risk of developing heart disease, high blood pressure, stroke, diabetes mellitus, Metabolic Syndrome.";
        break;

      default:
    }
    bmiDescription = desc;
    return bmiDescription;
  }
}
