// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/users_model.dart';
import '../repositories/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      emit(Loading());
      try {
        final List<UsersModel> usersList = await homeRepository.getUsers();
        if (usersList.isNotEmpty) {
          emit(Loaded(usersList));
        } else {
          emit(Error());
        }
      } catch (e) {
        print(e);
        emit(Error());
      }
    });
  }
}
