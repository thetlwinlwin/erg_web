class Product {
  final String name;
  final String? description;
  Product({
    required this.name,
    required this.description,
  });

  String get imgPath => 'assets/products/${name.toLowerCase()}.png';
}

List<Product> productList = [
  Product(
    name: 'C_Channel',
    description: 'thickness(mm) - 0.5 to 2\nlength(m) - any length',
  ),
  Product(
    name: 'Deck_Sheet',
    description: 'thickness(mm) - 0.75 to 2\nlength(m) - any length',
  ),
  Product(
    name: 'Hollow',
    description:
        '1/2" x 1/2" to 3" x 3"\nthickness(mm) - 0.75 to 1.8\nlength(m)- up to 6',
  ),
  Product(
    name: 'Omega',
    description: 'thickness(mm) - 0.8 to 1.5\nlength(m) - up to 6',
  ),
  Product(
    name: 'Roof',
    description:
        'thickness(mm) - 0.25 to 0.45\ncolor - multiple colors\nlength(m) - any length',
  ),
  Product(
    name: 'Gutter',
    description:
        'thickness(mm) - 0.25 to 1.8\ncolor - multiple colors\nlength(m) - up to 6\ndesign - different design',
  ),
  Product(
    name: 'Ridge Top',
    description:
        'thickness(mm) - 0.25 to 1.8\ncolor - multiple colors\nlength(m) - up to 6\ndesign - different design',
  ),
  Product(
    name: 'Sun_Shade',
    description:
        'thickness(mm) - 0.25 to 1.8\ncolor - multiple colors\nlength(m) - up to 6\ndesign - different design',
  ),
  Product(
    name: 'U_Beam',
    description: null,
  ),
  Product(
    name: 'H_Beam',
    description: null,
  ),
  Product(
    name: 'Screws',
    description: 'hex_head_screws of any size.',
  ),
];
