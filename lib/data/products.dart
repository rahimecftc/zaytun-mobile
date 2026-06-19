import '../models/product.dart';

final List<Map<String, dynamic>> productData = [
  {
    'id': '1',
    'name': 'Extra Virgin Olive Oil',
    'category': 'Oil',
    'price': 329.0,
    'image': '',
    'description':
        'Premium extra virgin olive oil cold pressed from hand-picked Mediterranean olives. Rich in antioxidants and healthy fats, perfect for cooking and dressing.',
  },
  {
    'id': '2',
    'name': 'Cold Pressed Olive Oil',
    'category': 'Oil',
    'price': 289.0,
    'image': '',
    'description':
        'Pure cold pressed olive oil extracted without heat to preserve nutrients. Ideal for salads, dips and light cooking.',
  },
  {
    'id': '3',
    'name': 'Olive Soap',
    'category': 'Care',
    'price': 129.0,
    'image': '',
    'description':
        'Handcrafted natural soap enriched with pure olive oil. Gentle on all skin types, deeply moisturizing and free from harsh chemicals.',
  },
  {
    'id': '4',
    'name': 'Olive Hand Cream',
    'category': 'Care',
    'price': 149.0,
    'image': '',
    'description':
        'Nourishing hand cream infused with olive extract and natural botanicals. Softens and protects dry hands all day long.',
  },
  {
    'id': '5',
    'name': 'Olive Body Lotion',
    'category': 'Care',
    'price': 189.0,
    'image': '',
    'description':
        'Lightweight body lotion enriched with olive oil and vitamin E. Absorbs quickly, leaving skin silky smooth and hydrated.',
  },
  {
    'id': '6',
    'name': 'Olive Candle',
    'category': 'Aroma',
    'price': 189.0,
    'image': '',
    'description':
        'Hand-poured soy wax candle with a warm Mediterranean olive and herb fragrance. Burns cleanly for up to 40 hours.',
  },
  {
    'id': '7',
    'name': 'Olive Perfume',
    'category': 'Aroma',
    'price': 349.0,
    'image': '',
    'description':
        'An elegant eau de parfum inspired by olive groves at sunrise. Fresh, earthy top notes with a warm woody base.',
  },
  {
    'id': '8',
    'name': 'Olive Leaf Tea',
    'category': 'Tea',
    'price': 149.0,
    'image': '',
    'description':
        'Antioxidant-rich herbal tea crafted from sun-dried pure olive leaves. Supports immunity and promotes natural wellness.',
  },
];

List<Product> getProducts() {
  return productData.map((data) => Product.fromJson(data)).toList();
}

List<String> getCategories() {
  final categories = getProducts().map((p) => p.category).toSet().toList();
  return ['All', ...categories];
}
