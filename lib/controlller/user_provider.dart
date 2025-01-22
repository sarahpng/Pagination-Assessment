import 'package:flutter/material.dart';
import 'package:pagination_assessment/model/user_model.dart';
import 'package:pagination_assessment/repositories/user_repository.dart';

class UserProvider extends ChangeNotifier {
  final _userRepository = UserRepository();

  final List<UserModel> _users = [];
  bool _isLoading = false;
  bool _hasMoreData = true;
  int _page = 1;
  final int _limit = 10;

  List<UserModel> get users => _users;

  bool get isLoading => _isLoading;
  bool get hasMoreData => _hasMoreData;

  Future<void> fetchUsers() async {
    if (_isLoading || !_hasMoreData) return;
    _isLoading = true;
    notifyListeners();

    try {
      List<UserModel> newUsers =
          await _userRepository.fetchUsers(_page, _limit);
      if (newUsers.isEmpty) {
        _hasMoreData = false;
      } else {
        _users.addAll(newUsers);
        _page++;
      }
    } catch (e) {
      print('Error fetching users: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
