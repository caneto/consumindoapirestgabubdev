// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'author.dart';

const json = '''{
    "title": "Title post",
    "tags": ["android","flutter"],
    "readTime": "5 min",
    "photoUrl": "http://image/com",
    "hasReadLater": false,
    "author": {
        "id": "UFSDF",
        "name": "Name",
        "profileUrl": "Profile",
    }
}''';


class Post {
  final String title;
  final List<String> tags;
  final String readTime;
  final String photoUrl;
  final bool hasReadLater;
  final Author author;
  const Post({
    required this.title,
    required this.tags,
    required this.readTime,
    required this.photoUrl,
    required this.hasReadLater,
    required this.author,
  });
}
