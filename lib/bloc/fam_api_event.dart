part of 'fam_api_bloc.dart';

abstract class FamApiEvent extends Equatable {
  const FamApiEvent();

  @override
  List<Object> get props => [];
}

class FetchFam extends FamApiEvent{}