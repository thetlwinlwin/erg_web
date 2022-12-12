class Product {
  final String name;
  final String description;
  Product({
    required this.name,
    required this.description,
  });

  String get imgPath => 'assets/products/${name.toLowerCase()}.png';
}

List<Product> productList = [
  Product(
    name: 'C_Channel',
    description: 'Br br nyr nyr',
  ),
  Product(
    name: 'Deck_Sheet',
    description:
        'Br br nyr nyr asdfasd fsadf sar a safasdfl;sadfsadfsadfsadfsadfsadfasdfasdfl;asdfjasdl;fjsadfl',
  ),
  Product(
    name: 'H_Beam',
    description: 'Br br nyr nyr',
  ),
  Product(
    name: 'Hollow',
    description: 'Br br nyr nyr',
  ),
  Product(
    name: 'Omega',
    description: 'Br br nyr nyr',
  ),
  Product(
    name: 'Roof',
    description: 'Br br nyr nyr',
  ),
  Product(
    name: 'U_Beam',
    description: 'Br br nyr nyr',
  ),
];
