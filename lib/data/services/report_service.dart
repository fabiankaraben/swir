import 'package:swir/data/models/models.dart';

abstract class ReportService {
  Future<void> sendReport(Person person);
}
