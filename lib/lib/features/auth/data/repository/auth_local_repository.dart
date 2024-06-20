import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hotel_book/core/failure/failure.dart';
import 'package:hotel_book/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:hotel_book/features/auth/domain/entity/user_entity.dart';
import 'package:hotel_book/features/auth/domain/repository/auth_repository.dart';

import 'package:riverpod/riverpod.dart';

final authLocalRepositoryProvider = Provider((ref) {
  return AuthLocalRepository(ref.read(authLocalDataSourceProvider));
});

class AuthLocalRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSource;
  AuthLocalRepository(this._authLocalDataSource);
  @override
  Future<Either<Failure, bool>> loginUser(String email, String password) {
    return _authLocalDataSource.loginUser(email, password);
  }

  @override
  Future<Either<Failure, bool>> registerUser(UserEntity user) {
    return _authLocalDataSource.registerUser(user);
  }

  @override
  Future<Either<Failure, String>> uploadProfilePicture(File file) async {
    return const Right("");
  }
}
