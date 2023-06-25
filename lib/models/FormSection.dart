import 'package:bmis_final/models/BMISFormField.dart';

class FormSection {
  FormSection({
    required this.key,
    required this.index,
    required this.label,
    required this.childColumns,
  });
  final String key;
  final int index;
  final String label;
  final List<BMISFormField> childColumns;
}
