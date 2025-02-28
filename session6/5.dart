void main() {
  print(countWords("omar"));      
  print(countWords("   my name omar  "));
                 
}

int countWords(String sentence) {
  if (sentence.trim().isEmpty) return 0; 

  List<String> words = sentence.trim().split(" ").where((word) => word.isNotEmpty).toList();
  return words.length;
}

