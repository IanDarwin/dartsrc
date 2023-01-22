import 'package:intl/intl.dart';

/// Demo number formatting using the "compact" aka human-readable, "-h" format.
void main() {

	final nf = NumberFormat.compact();

	for (double n in [0.01, 1, 1024, 1025, 4096, 16000, 100000, 1e6, 1e24]) {
		print('Number $n formats as ${nf.format(n)}');
	}
}
