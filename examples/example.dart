import 'dart:convert';

void main() {
  const json = '{"nome":"Carlos"}';  // MAP
  const jsonList = '[{"nome":"Carlos"}]';  // LIST<MAP>
  const jsonComplex  = '{"nome":"Carlos", "endereco": [{"rua": "Rua 1"}]}'; // MAP
  final map = jsonDecode(json) as Map;
  print(map);
  final list = jsonDecode(jsonList) as List;
  print(list);
  final complex = jsonDecode(jsonComplex) as Map;
  print(complex);
  print(complex['endereco'][0]['rua']);
}