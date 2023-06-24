class BMISFormField {
  BMISFormField({
    required this.key,
    required this.dataType,
    required this.subsectionKey,
    required this.sectionKey,
    required this.parentKey,
    required this.labelText,
    required this.hintText,
    required this.options,
    required this.question,
    required this.label,
    required this.childColumns,
    required this.conditional_fields,
    required this.initialValues,
  });
  final String key;
  final String sectionKey;
  final String? subsectionKey;
  final String parentKey;
  final String dataType;
  final String labelText;
  final String hintText;
  final List<dynamic> options;
  final String question;
  final String label;
  final List childColumns;
  final Map<dynamic, dynamic> conditional_fields;
  final dynamic initialValues;
}
