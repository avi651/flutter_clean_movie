import 'package:movie_clean/core/services/typedef.dart';

abstract interface class IAiRepository {
  RepoEitherResponse<String> sendMessage(String message);
}
