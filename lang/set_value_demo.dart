/// Demo of using a lambda for a method call

void setValue(Function f) {
  print("setValue called with function $f");
}

// The two calls in this method are pretty much the same
main() {
  setValue( (val) {
    update_ui(val);
  });

  setValue( (val) => update_ui(val) );
}

// Ignore this
void update_ui(val) {
  print("Update_ui called with $val");
}