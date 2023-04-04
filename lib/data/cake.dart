class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;
  final String bakerDescription;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
    required this.bakerDescription,
  });
}

final List<Cake> listCakes = [
  Cake(
    id: 1,
    name: 'Banana Cake',
    price: '55.00',
    imageUrl: 'assets/box1.jpeg',
    isFavorite: false,
    subMenu: 'cake_slice',
    bakerDescription: 'Banana cake is prepared using banana as a primary ingredient and typical cake ingredients such as flour, sugar, eggs, butter, margarine or oil and baking soda.',
  ),
  Cake(
    id: 2,
    name: 'Butter cake',
    price: '55.00',
    imageUrl: 'assets/box2.jpg',
    isFavorite: false,
    subMenu: 'cake_slice',
    bakerDescription: 'A butter cake is a cake in which one of the main ingredients is butter. Butter cake is baked with basic ingredients: butter, sugar, eggs, flour, and leavening agents such as baking powder or baking soda.',
  ),
  Cake(
    id: 5,
    name: 'Red Velvet Brownies',
    price: '89.00',
    imageUrl: 'assets/box5.jpg',
    isFavorite: false,
    subMenu: 'cake_brownies',
    bakerDescription: "These fudgy Red Velvet Brownies are the perfect treat to serve on Valentine's Day. They have a beautiful deep red color making them extra festive.",
  ),
  Cake(
    id: 6,
    name: 'Brownies Almond',
    price: '94.00',
    imageUrl: 'assets/box6.jpeg',
    isFavorite: false,
    subMenu: 'cake_brownies',
    bakerDescription: 'Rich and fudgy brownies topped with almonds and sea salt that are easy to make from scratch. Jump to the Salted Almond Brownies Recipe or read on to see how we make them.',
  ),
  Cake(
    id: 3,
    name: 'Coffee Cake Pudding',
    price: '99.00',
    imageUrl: 'assets/box3.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
    bakerDescription: 'The moist coffee cake with the pudding on top brings out a heavenly dessert. Here simple coffee flavored cake is topped with pudding mix and sets together. The aroma of coffee, chocolate and caramel together forms a wonderful recipe.',
  ),
  Cake(
    id: 4,
    name: 'Pudding Cake Tiramisu',
    price: '99.00',
    imageUrl: 'assets/box4.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
    bakerDescription: 'Tiramisu is typically a boozy, rich custard recipe requiring precision, skill and patience. Skip the double boiler, egg yolks and alcohol for this light and easy tiramisu recipe.',
  ),
  Cake(
    id: 7,
    name: 'Chocolate Croissant',
    price: '75.50',
    imageUrl: 'assets/crois2.jpeg',
    isFavorite: false,
    subMenu: 'cro_issant',
    bakerDescription: 'A chocolate croissant, or “pain au chocolat” in French, is a buttery pastry with a chocolate filling.',
  ),
  Cake(
    id: 8,
    name: 'Plain Croissant',
    price: '69.50',
    imageUrl: 'assets/crois1.png',
    isFavorite: false,
    subMenu: 'cro_issant',
    bakerDescription: 'The classic crescent-shaped pastry made from flaky layers of buttery dough, baked to order every morning. Also available to bake at home. Contains eggs, milk, and wheat.',
  ),
];
