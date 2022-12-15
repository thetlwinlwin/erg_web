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
    description: 'thickness - 0.5mm to 2mm\nlength - any length',
  ),
  Product(
    name: 'Deck_Sheet',
    description: 'thickness - 0.75mm to 2mm\nlength - any length',
  ),
  Product(
    name: 'Hollow',
    description:
        '1/2" x 1/2" to 3" x 3"\nthickness - 0.75mm to 1.8mm\nlength - up to 6m',
  ),
  Product(
    name: 'Omega',
    description: 'thickness - 0.8mm to 1.5mm\nlength - up to 6m',
  ),
  Product(
    name: 'Roof',
    description:
        'thickness - 0.25mm to 0.45mm\ncolor - multiple colors\nlength - any length',
  ),
  Product(
    name: 'Gutter',
    description:
        'thickness - 0.25mm to 1.8mm\ncolor - multiple colors\nlength - up to 6m\ndesign - different design',
  ),
  Product(
    name: 'Ridge Top',
    description:
        'thickness - 0.25mm to 1.8mm\ncolor - multiple colors\nlength - up to 6m\ndesign - different design',
  ),
  Product(
    name: 'Sun_Shade',
    description:
        'thickness - 0.25mm to 1.8mm\ncolor - multiple colors\nlength - up to 6m\ndesign - different design',
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
