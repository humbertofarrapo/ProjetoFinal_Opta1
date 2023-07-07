import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
class APIError with _$APIError {
  const factory APIError.invalidApiKey() = _InvalidApiKey;
  const factory APIError.noInternetConnection() = _NoInternetConnection;
  const factory APIError.notFound() = _NotFound;
  const factory APIError.unknown() = _Unknown;
}

extension WeatherErrorAsync on APIError {
  AsyncValue<T> asAsyncValue<T>() => when(
        invalidApiKey: () => const AsyncValue.error('Chave da API inválida.'),
        noInternetConnection: () =>
            const AsyncValue.error('Sem conexão.'),
        notFound: () => const AsyncValue.error('Cidade não encontrada.'),
        unknown: () => const AsyncValue.error('Ocorreu um erro.'),
      );
}
