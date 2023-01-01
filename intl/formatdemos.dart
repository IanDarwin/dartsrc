import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

main() async {
  final locale = Intl.getCurrentLocale();

  print("== CURRENCY ==");
  var numberFormatter = NumberFormat.currency(locale: locale);
  print(numberFormatter.format(123.456));

  // Print the date/time as per current locale and ISO format
  print("== DATE/TIME ==");
  DateTime now = DateTime.now();
  print("Default format: $now");
  var dateFormatter = DateFormat().addPattern('yyyy-MM-dd').add_Hms();
  print("Simplified ISO format: ${dateFormatter.format(now)}");
  dateFormatter = DateFormat();
  print("Default format: ${dateFormatter.format(now)}");
}