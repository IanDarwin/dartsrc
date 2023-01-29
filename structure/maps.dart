main() {
Map scores = { 'Ian':25, 'Linda':31, 'Robin': 27 };
print(scores);
print(scores['Ian']);

// A more careful definition
Map<String,int> scores2 =  { 'Ian':25, 'Linda':31, 'Robin': 27 };

// What you would like to do:
// scores2.add('Tobey', 34);
// What you get if you try:
// Error: The method 'add' isn't defined for the class 'Map'...
// These two forms work:
scores2.addAll({'Tobey': 34});
scores2.putIfAbsent('Tobey', () => 34);

// This works too:
scores2['Boris'] = 19;

// Collections can be iterated using forEach:
scores2.forEach((key, value) {
  print('$key\t$value');
});
}
