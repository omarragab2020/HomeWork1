void main () {
 Map<String, dynamic> player = {
    "name": "omar",
    "age": 24,
    "country": "Egypt",
  };
  player['name'] = 'ahmed';
  player.remove('age');
  player.forEach((key, value){
 print("$key: $value");
  });

}
