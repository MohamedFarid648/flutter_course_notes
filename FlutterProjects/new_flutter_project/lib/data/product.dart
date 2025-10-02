class Product {
  final int id;
  final String name;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

final List<Product> dummyProducts = [
  Product(
    id: 1,
    name: "iPhone 15 Pro",
    price: 1200.00,
    imageUrl: "https://via.placeholder.com/150x150.png?text=iPhone+15+Pro",
  ),
  Product(
    id: 2,
    name: "Samsung Galaxy S24",
    price: 999.99,
    imageUrl: "https://via.placeholder.com/150x150.png?text=Galaxy+S24",
  ),
  Product(
    id: 3,
    name: "MacBook Air M3",
    price: 1499.99,
    imageUrl: "https://via.placeholder.com/150x150.png?text=MacBook+Air+M3",
  ),
  Product(
    id: 4,
    name: "Sony WH-1000XM5",
    price: 399.00,
    imageUrl: "https://via.placeholder.com/150x150.png?text=Sony+Headphones",
  ),
  Product(
    id: 5,
    name: "Apple Watch Ultra",
    price: 799.00,
    imageUrl: "https://via.placeholder.com/150x150.png?text=Apple+Watch+Ultra",
  ),
];
