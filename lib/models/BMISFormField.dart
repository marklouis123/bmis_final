class BMISFormField {
  static BMISFormField fromObject(Map object) {
    return BMISFormField(
        key: object['key'] ?? '',
        dataType: object['data_type'] ?? '',
        subsectionKey: object['parent_key'] ?? '',
        sectionKey: object['parent_key'] ?? '',
        parentKey: object['parent_key'] ?? '',
        labelText: object['label'] ?? '',
        hintText: object['hint_text'] ?? '',
        options: object['options'] ?? [],
        question: object['question'] ?? '',
        label: object['label'] ?? '',
        childColumns: object['child_columns'] ?? '',
        conditional_fields: object['conditional_fields'] ?? {},
        initialValues: object['initialValues'] ?? '',
        required: object['required'] ?? false,
        disabledOnUpdate: object['disabledOnUpdate'] ?? false);
  }

  BMISFormField(
      {required this.key,
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
      required this.required,
      required this.disabledOnUpdate});
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
  final bool required;
  final bool disabledOnUpdate;
}
