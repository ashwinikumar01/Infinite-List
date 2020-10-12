import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_infinite_list/app.dart';
import 'package:flutter_infinite_list/simple_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  EquatableConfig.stringify = kDebugMode;
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}
