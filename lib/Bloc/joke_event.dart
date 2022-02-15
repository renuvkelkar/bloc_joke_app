part of 'joke_bloc.dart';

abstract class JokeEvent extends Equatable {
  const JokeEvent();
}

class LoadJokeEvent extends JokeEvent {
  @override
  List<Object> get props => [];
}
