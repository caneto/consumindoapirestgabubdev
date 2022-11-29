// ignore_for_file: public_member_api_docs, sort_constructors_first
const json = '''{
  "id": "USDSF",
  "name": "Loren Loren",
  "profileUri": "http://image",
  "createAt": "2022-01-01-19:00", //DATETIME
  "email":"email@gmail.com",
  "bio":"Flutter Developer"
}''';

class USer {
  final String id;
  final String name;
  final String profileUri;
  final String createAt;
  final String email;
  final String bio;
  
  const USer({
    required this.id,
    required this.name,
    required this.profileUri,
    required this.createAt,
    required this.email,
    required this.bio,
  });

}
