import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent {to_purple, to_cyan}

class ColorBloc extends Bloc<ColorEvent, Color>{
  Color _color = Colors.purple;
  @override
  Color get initialState => Colors.purple;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    //ada event lalu mapping untuk mengubang state berdasarkan event
    _color = (event == ColorEvent.to_purple)? Colors.purple : Colors.cyan;
    yield _color;// untuk memasukan stream
  }

}