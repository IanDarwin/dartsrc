main() {
print("Constant and Final variables");

final person = "Jo Schmo";
final String person2 = 'Wobbly Wuzzard';
// person = 'Another name'; // fails at compile time

List<int> data = const []; 
// data.add(10);	// Would fail at runtime
data = [ 10,20, 30];	// allowed - why?

const pi = 22/7;	// (not the real value!)
// Try to give pi a more accurate value
// pi = 3.141592653589;     // fails at compile time

print(person);
print(person2);
print(data);
print(pi);
}
