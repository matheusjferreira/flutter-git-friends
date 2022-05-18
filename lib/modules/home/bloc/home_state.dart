part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class Loading extends HomeState {}

class Loaded extends HomeState {
  final List<UsersModel> usersModel;

  Loaded(this.usersModel);
}

class Error extends HomeState {}