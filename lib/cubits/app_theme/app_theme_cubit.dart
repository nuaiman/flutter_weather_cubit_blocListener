import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_cubit_weather_app/constants/constants.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeState.initial());

  void settheme(double currentTemp) {
    if (currentTemp > kWarmOrNot) {
      emit(state.copyWith(appThemeMode: AppThemeMode.light));
    } else {
      emit(state.copyWith(appThemeMode: AppThemeMode.dark));
    }
  }
}
