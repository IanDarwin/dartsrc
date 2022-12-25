
typedef TwoNameFormatter(String first, String last);

byFullName(String first, String last) => "$first $last";

byLastCommaFirst(first, last) => "$last, $first";

main() {
	// Format the name using byFullName, then lastCommaFirst
	TwoNameFormatter formatter = byFullName;
	print(formatter("Ian", "Darwin"));
	formatter = byLastCommaFirst;
	print(formatter("Ian", "Darwin"));
	// Or even: apply multiple operations to same data
	for (TwoNameFormatter fmt in [byFullName, byLastCommaFirst]) {
		print(fmt("Ian", "Darwin"));
	}
}
