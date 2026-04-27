import 'package:dartz/dartz.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/data/ai/ai_client.dart';
import 'package:movie_clean/domain/i_ai_repository/i_ai_repository.dart';

class AiRepository implements IAiRepository {
  final AIClient client;

  AiRepository({required this.client});

  @override
  RepoEitherResponse<String> sendMessage(String message) async {
    final response = await client.post(
      path: "https://api.openai.com/v1/chat/completions",
      data: {
        "model": "gpt-4o-mini",
        "messages": [
          {"role": "user", "content": message},
        ],
      },
    );

    return response.fold((failure) => left(failure), (res) {
      try {
        final content = res.data['choices'][0]['message']['content'];

        return right(content);
      } catch (e) {
        return left(Failure.serializationFailure(e));
      }
    });
  }
}
