import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String yMMMd() {
    return DateFormat.yMMMd().format(this).toString();
  }
}
