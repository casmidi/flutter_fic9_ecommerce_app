import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fic9_ecommerce/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_fic9_ecommerce/data/models/request/register_request.dart';
import 'package:flutter_fic9_ecommerce/data/models/responses/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const _Initial()) {
    on<_Register>((event, emit)  async {
      // TODO: implement event handler
      emit(const _Loading());
      final response = await AuthRemoteDatasource().register(event.data!);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
