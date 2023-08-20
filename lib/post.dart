class Post {
  final String name; //リポジトリ名
  final String description; //リポジトリの説明

  Post.fromJsonMap(Map<String, dynamic> json)
      //jsonデータをMap型で受け取る(どこから受け取ってるん？)
      //　→　jsonDecode(response.body)['items'] as List)のitemsの中身をMap型で受け取っている
      //mapとjsonの違いは？ →　mapはキーと値のペアの集合体、jsonはデータの形式
      //dynamicは型を指定しない
      : name = json['name'] ?? '', //nameはjsonの中のnameを受け取る
        description =
            json['description'] ?? ''; //descriptionはjsonの中のdescriptionを受け取る
}
