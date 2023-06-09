import 'package:bloc/bloc.dart';
import 'package:finexis/bloc_observer.dart';
import 'package:finexis/salman.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

