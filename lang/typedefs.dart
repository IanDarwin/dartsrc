
typedef TwoNameFormatter(String first, String last);

byFullName(String first, String last) => "$first $last";

lastCommaFirst(first, last) => "$last, $first";

main() {
	// Format the name using byFullName, then lastCommaFirst
	TwoNameFormatter formatter = byFullName;
	print(formatter("Ian", "Darwin"));
	formatter = lastCommaFirst;
	print(formatter("Ian", "Darwin"));
	// Or even: apply multiple operations to same data
	for (TwoNameFormatter fmt in [byFullName, lastCommaFirst]) {
		print(fmt("Ian", "Darwin"));
	}
}
