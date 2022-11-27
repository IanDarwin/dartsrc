main() {
Map scores = { 'Ian':25, 'Linda':31, 'Robin': 27 };
print(scores);
print(scores['Ian']);

// A more careful definition
Map<String,int> scores2 =  { 'Ian':25, 'Linda':31, 'Robin': 27 };
scores2.addAll({'Tobey': 34});
scores2['Boris'] = 19;
scores2.forEach((key, value) {
  print('$key\t$value');
});
}
