// code created by https://www.youtube.com/@flutterflowexpert
// video - https://youtube.com/watch?v=x-kivZ7ChD8
// support my work - https://github.com/sponsors/bulgariamitko

List<dynamic> sortJson(
  List<dynamic> data,
  String? sortBy,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // null safety
  sortBy ??= 'name';

  data.sort((a, b) {
    // Check if the field to sort by is a nested field (e.g., 'company.name')
    List<String> fields = sortBy!.split('.');

    dynamic aValue = a;
    dynamic bValue = b;

    for (String field in fields) {
      aValue = aValue[field];
      bValue = bValue[field];
    }

    // Compare the values based on their type
    if (aValue is String) {
      return aValue.compareTo(bValue as String);
    } else if (aValue is num) {
      return aValue.compareTo(bValue as num);
    } else {
      throw ArgumentError('Unsupported field type for sorting');
    }
  });

  return data;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}