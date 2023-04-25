class SimpleIntrestViewCalculation {
  double calculateSI({
    double principle = 1,
    double time = 1,
    double rate = 1,
  }) =>
      principle * time * rate / 100;
}
