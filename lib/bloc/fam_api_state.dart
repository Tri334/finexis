part of 'fam_api_bloc.dart';

enum FamRespond { famInitial, famSucces, famFailed }

class FamApiState extends Equatable {
  const FamApiState(
      {this.famData = const <FamData>[],
      this.newStatus = FamRespond.famInitial});

  final List<FamData> famData;
  final FamRespond newStatus;

  FamApiState copyWith() {
    return FamApiState(famData: famData, newStatus: newStatus);
  }

  @override
  List<Object> get props => [];
}

class FamApiInitial extends Equatable{
  final List<FamData> famData;
  final FamRespond newStatus;

  const FamApiInitial({this.famData = const <FamData>[], this.newStatus = FamRespond.famInitial});

  FamApiInitial copyWith({
    FamRespond? status,
    List<FamData>? famData,
  }) {
    return FamApiInitial(
      newStatus: status ?? newStatus,
      famData: famData ?? this.famData,
    );
  }

  @override
  List<Object?> get props => [newStatus, famData];
}
