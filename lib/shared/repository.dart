import 'package:erg_web/shared/contact_model.dart';
import 'package:http/http.dart' as http;

abstract class IRepo {
  Future<bool> sendMail(SuggestionModel model);
}

class Repo implements IRepo {
  @override
  Future<bool> sendMail(SuggestionModel model) async {
    final mailUri = Uri.https('erg-web-mail.vercel.app', 'post/email');
    try {
      final response = await http.post(
        mailUri,
        body: model.toJson(),
        headers: {
          'Content-Type': 'application/json',
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Credentials": "true",
          "Access-Control-Allow-Methods":
              "POST, GET, OPTIONS, PUT, DELETE, HEAD"
        },
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
