//Userを識別するデータを入れる
class User {
  String name;
  String uid;
  String imagePath;
  String lastMessage;

  //Userが作られるときの処理を書く
  User({
    required this.name,
    required this.uid,
    //this.imagePath, だとエラーが出た。
    required this.imagePath,
    this.lastMessage = ''
  });
}
