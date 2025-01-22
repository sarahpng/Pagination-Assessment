import 'package:dio/dio.dart';
import 'package:pagination_assessment/model/user_model.dart';

class UserRepository {
  final dio = Dio();

  static const String _baseUrl = "https://randomuser.me/api/";

  Future<List<UserModel>> fetchUsers(int page, int limit) async {
    final response = await dio.get('$_baseUrl?page=$page&results=$limit');
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = response.data['results'];
      return jsonResponse.map((data) => UserModel.fromJson(data)).toList();
    } else {
      throw Exception('Failed to fetch post: ${response.statusCode}');
    }
  }
}
