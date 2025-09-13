class product {
  final String image;
  final int id;
  final String name;
  final String price;

  product({
    required this.image,
    required this.name,
    required this.price,
    this.id = 0,
  });

  static List<product> productlist = [
    product(
      id: 0,
      image: 'assets/images/m1.png',
      name: 'Strawberry',
      price: '\$4.99',
    ),
    product(
      id: 1,
      image: 'assets/images/m2.png',
      name: 'Avocado',
      price: '\$6.99',
    ),
    product(
      id: 2,
      image: 'assets/images/m3.png',
      name: 'Pineapple',
      price: '\$5.99',
    ),
    product(
      id: 3,
      image: 'assets/images/m1.png',
      name: 'Strawberry',
      price: '\$4.99',
    ),
    product(
      id: 4,
      image: 'assets/images/m2.png',
      name: 'Avocado',
      price: '\$6.99',
    ),
    product(
      id: 5,
      image: 'assets/images/m3.png',
      name: 'Pineapple',
      price: '\$5.99',
    ),
  ];
}
