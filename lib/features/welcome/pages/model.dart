class product {
  final String image;
  final int id;
  final String name;
  final String price;
  final String cont;

  product({
    required this.image,
    required this.cont,
    required this.name,
    required this.price,
    this.id = 0,
  });

  static List<product> productlist = [
    product(
      id: 0,
      image: 'assets/images/m1.png',
      name: 'melon fruit salad',
      price: '\$4.99',
      cont:
          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
    ),
    product(
      id: 1,
      image: 'assets/images/m2.png',
      name: 'Tropical fruit salad',
      price: '\$6.99',
      cont:
          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
    ),
    product(
      id: 2,
      image: 'assets/images/m3.png',
      name: 'Berry mango combo',
      price: '\$5.99',
      cont:
          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
    ),
    product(
      id: 3,
      image: 'assets/images/m1.png',
      name: 'Honey lime combo',
      price: '\$4.99',
      cont:
          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
    ),
    product(
      id: 4,
      image: 'assets/images/m2.png',
      name: 'Berry mango combo',
      price: '\$6.99',
      cont:
          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
    ),
    product(
      id: 5,
      image: 'assets/images/m3.png',
      name: 'melon fruit salad',
      price: '\$5.99',
      cont:
          "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
    ),
  ];
}
