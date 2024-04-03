
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

part 'base_response_model.g.dart';

///[BaseResponseModel] is a generic class that is used to wrap the response
///from the server.
final class BaseResponseModel<T> extends _$BaseResponseModel {
  ///[data] is the response data from the server.
  BaseResponseModel({
    this.data,
    this.error,
    this.status,
  });

  ///[BaseResponseModel.sendRequest] is a factory method that is used to send
  ///a request to the server.
  factory BaseResponseModel.sendRequest({
    required IResponseModel<T?, BaseErrorModel?> request,
  }) =>
      _$BaseResponseModel.getResponse(request);

  ///[BaseResponseModel.sendPrimitiveRequest] is a factory method that is used
    factory BaseResponseModel.sendPrimitiveRequest({
    required T? request,
  }) =>
      _$BaseResponseModel.getPrimitiveResponse(request);

  ///[data] is the response data from the server.
  final T? data;

  ///[status] is the status code of the response.
  final int? status;

  ///[error] is the error response from the server.
  final BaseErrorModel? error;
}
