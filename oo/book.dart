class Book {
    final String title;
    final String author;
    final double price;
    String describe() {
        return "Book $title by $author retails at $price";
    }
    // One-line expression methods shortcut using => notation
    String describe2() => "Book $title by $author lists at C$price";

	// Constructor
	const Book(this.title, this.author, this.price);
}

main() {
	var b = Book('Java Cookbook', 'Ian Darwin', 12.34);
	print(b.describe());
	print(b.describe2());
}
