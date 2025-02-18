// code created by https://www.youtube.com/@flutterflowexpert
// video - no
// support my work - https://github.com/sponsors/bulgariamitko

List<String>? convertDateTimesToStrings(
  List<DateTime>? dateTimes,
  String? format,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // null safety
  dateTimes ??= [];
  format ??= 'yyyy-MM-dd';

  List<String> dateStrings = [];

  for (DateTime dateTime in dateTimes) {
    String dateString = dateTime.toIso8601String().substring(0, format.length);
    dateStrings.add(dateString);
  }

  return dateStrings;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
