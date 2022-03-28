extension StringExtension on String{
  get firstLetterToUpperCase {
    if (this != null)
      return this[0].toUpperCase() + this.substring(1);
    else
      return null;
  }
}

extension DateTimeExtension on DateTime{
  get trimMilliseconds {
    if (this != null)
      return new DateTime(this.year, this.month, this.day, this.hour, this.minute, 0, 0);
    else
      return null;
  }
}

extension ParseNumbers on String {
  int parseInt() {
    return int.parse(this);
  }
  double parseDouble() {
    return double.parse(this);
  }
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}