import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/domain/i_ai_repository/i_ai_repository.dart';

class SendMessageUseCase {
  final IAiRepository repository;

  SendMessageUseCase(this.repository);

  RepoEitherResponse<String> call(String message) {
    return repository.sendMessage(message);
  }
}
