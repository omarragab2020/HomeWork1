void main() {
  //4: Map Lookup
 
Map <String ,String> person = {
  'name' : 'Alice' ,
  'age' : '25' ,
  'city' : 'NewYork' ,
  
};
print(person['age']);
person['city'] = 'Los Angeles';
print(person);

}