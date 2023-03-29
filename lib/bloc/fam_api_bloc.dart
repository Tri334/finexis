import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'api/api_services.dart';

part 'fam_api_event.dart';
part 'fam_api_state.dart';

class FamApiBloc extends Bloc<FamApiEvent, FamApiInitial> {
  final ApiServices apiServices;
  FamApiBloc(this.apiServices) : super(FamApiInitial()) {
    on<FamApiEvent>((event, emit) async {
      try{
        if(state.newStatus == FamRespond.famInitial){
          final fetchFam = await apiServices.fetchFamData();
          return emit(state.copyWith(
            famData: fetchFam,
            status: FamRespond.famSucces
          ));
        }
      } catch (_){
        emit(state.copyWith(
          status: FamRespond.famFailed
        ));
      }
      
    });
  }
}
