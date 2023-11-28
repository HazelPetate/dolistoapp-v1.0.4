import 'package:dolistoapp/data/models/listUser/post_list_user_resp.dart';

import '../apiClient/api_client.dart';

/// Repository class for managing API requests.
///
/// This class provides a simplified interface for making the
/// API request using the [ApiClient] instance
class Repository {
  final _apiClient = ApiClient();

  Future<PostListUserResp> listUser({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.listUser(
      headers: headers,
      requestData: requestData,
    );
  }
}
