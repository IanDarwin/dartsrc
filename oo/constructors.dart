class Camera {
  int id;
  String make, model;
  String? includedLens;
  Camera(this.id, {required this.make, required this.model, this.includedLens});
  @override
  String toString() {
    return '#$id: $make camera, model $model';
  }
}

main() {
  var cams = [
    Camera(1, make: 'Nikon', model:'Z-9', includedLens:'24mm f/2.0'),
    Camera(2, make: 'Canon', model:'EOS V mk III') ,  // No included lens
  ];
  for (Object c in cams) {
    print(c);
  }
}