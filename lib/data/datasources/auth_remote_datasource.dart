import 'package:dartz/dartz.dart';
import 'package:flutter_fic9_ecommerce/common/constants/variables.dart';
import 'package:flutter_fic9_ecommerce/data/models/request/register_request.dart';
import 'package:flutter_fic9_ecommerce/data/models/responses/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel data) async {
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/auth/local/register'),
      body: data.toJson(),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return right(AuthResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }
}
