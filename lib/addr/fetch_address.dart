import 'package:http/http.dart' as http; // HTTPリクエストを扱うためのライブラリをインポート
import 'dart:convert'; // JSONデータを扱うためのライブラリをインポート

// APIから住所を取得する非同期関数
Future<String> fetchAddress(String postalCode) async {
  // 郵便番号を使ってAPIにリクエストを送信
  final response = await http.get(Uri.parse(
      'https://zipcloud.ibsnet.co.jp/api/search?zipcode=$postalCode'));

  // レスポンスのステータスコードが200（成功）であることを確認
  if (response.statusCode == 200) {
    // APIのレスポンスをJSONとしてデコード
    final data = jsonDecode(response.body);
    // 住所情報を取得して結合
    var address = data['results'][0]['address1'] +
        data['results'][0]['address2'] +
        data['results'][0]['address3'];
    return address; // APIから取得した住所を返す
  } else {
    // ステータスコードが200でない場合は例外をスロー
    throw Exception('Failed to load address');
  }
}
