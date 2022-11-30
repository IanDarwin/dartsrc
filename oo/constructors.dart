class Camera {
  String make;
  String model;
  String? includedLens;
  Camera({required this.make, required this.model, this.includedLens});
  @override
  String toString() {
    return '$make camera, model $model';
  }
}

main() {
  var cams = [ Camera(make: 'Nikon', model:'Z-9', includedLens:'24mm f/2.0'),
  Camera(make: 'Canon', model:'EOS V mk III')   // No included lens
  ];
  for (Object c in cams) {
    print(c);
  }
}