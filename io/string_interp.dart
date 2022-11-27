/// Maybe this belongs in 'lang' but is mostly used with print()

main() {

var _hostname = "darwinsys.com",
    page = "";
var url = "https://$_hostname/$page";
print(url);
var x = url;
//var x = 42;
print("x is " + x);   // no go unless x a String
print("x is " + x.toString());// Explicit toString works, but...
print("x is $x");     // works AND is much more concise!
}
