main() { 
  var x = () => { print("Hello x") };
  var y = ()    { print("Hello y"); };
  //r z = () => { print("Hello z"); }
  print(x);
  x();
  print(y);
  y();
  print(y());
}
