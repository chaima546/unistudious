import 'package:unistudious/data/models/academy.dart';
class AcademyProvider {
  Future<List<Academy>> getAcademies() async {
    // In a real app, this would fetch from API/database
    // Mock data for demonstration:
    return [
      Academy(id: '1', name: 'Piuma', courseCount: 2),
      Academy(id: '2', name: 'Agency', courseCount: 1),
      Academy(id: '3', name: 'Lycée', courseCount: 3),
    ];
  }
}