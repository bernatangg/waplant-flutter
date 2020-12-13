import 'package:intl/intl.dart';

String rupiah(int value) {
  final formatter = new NumberFormat("#,###");
  String commaRupiah = formatter.format(value);
  String dotRupiah = commaRupiah.replaceAll(",", ".");
  return "Rp$dotRupiah,00";
}

String rupiahNoCent(int value) {
  final formatter = new NumberFormat("#,###");
  String commaRupiah = formatter.format(value);
  String dotRupiah = commaRupiah.replaceAll(",", ".");
  return "Rp$dotRupiah";
}

String rupiahValueOnly(int value) {
  final formatter = new NumberFormat("#,###");
  String commaRupiah = formatter.format(value);
  String dotRupiah = commaRupiah.replaceAll(",", ".");
  return "$dotRupiah";
}

String rupiahValueFromDouble(double value) {
  final formatter = new NumberFormat("#,###");
  String commaRupiah = formatter.format(value);
  String dotRupiah = commaRupiah.replaceAll(",", ".");
  return "$dotRupiah";
}

int rupiahTextFieldValue(String value) {
  if (value.isEmpty) {
    return null;
  }
  String strValue = value.replaceAll(".", "");
  return int.parse(strValue);
}
