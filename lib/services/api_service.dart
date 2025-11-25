class ApiService {
  // هذا ملف للخدمات المستقبلية عند ربط التطبيق بالسيرفر
  static Future<bool> reportCar(Map<String, dynamic> carData) async {
    // سيتم ربط هذا بالسيرفر لاحقاً
    await Future.delayed(Duration(seconds: 2)); // محاكاة اتصال بالسيرفر
    return true;
  }

  static Future<List<Map<String, String>>> searchCar(String query, String type) async {
    // محاكاة البحث في قاعدة البيانات
    await Future.delayed(Duration(seconds: 1));
    return [];
  }
}