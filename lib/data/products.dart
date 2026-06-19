import '../models/product.dart';

final List<Map<String, dynamic>> productData = [
  {
    'id': '1',
    'name': 'Extra Virgin Olive Oil',
    'category': 'Oil',
    'price': 329.0,
    'image': 'https://images.pexels.com/photos/25745493/pexels-photo-25745493.jpeg?auto=compress&cs=tinysrgb&w=600',
    'description':
        'Premium extra virgin olive oil cold pressed from hand-picked Mediterranean olives. Rich in antioxidants and healthy fats, perfect for cooking and dressing.',
  },
  {
    'id': '2',
    'name': 'Cold Pressed Olive Oil',
    'category': 'Oil',
    'price': 289.0,
    'image': 'https://images.pexels.com/photos/33783/pexels-photo-33783.jpeg?auto=compress&cs=tinysrgb&w=600',
    'description':
        'Pure cold pressed olive oil extracted without heat to preserve nutrients. Ideal for salads, dips and light cooking.',
  },
  {
    'id': '3',
    'name': 'Olive Soap',
    'category': 'Care',
    'price': 129.0,
    'image': 'https://images.pexels.com/photos/4889030/pexels-photo-4889030.jpeg?auto=compress&cs=tinysrgb&w=600',
    'description':
        'Handcrafted natural soap enriched with pure olive oil. Gentle on all skin types, deeply moisturizing and free from harsh chemicals.',
  },
  {
    'id': '4',
    'name': 'Olive Hand Cream',
    'category': 'Care',
    'price': 149.0,
    'image': 'https://images.pexels.com/photos/6633613/pexels-photo-6633613.jpeg?auto=compress&cs=tinysrgb&w=600',
    'description':
        'Nourishing hand cream infused with olive extract and natural botanicals. Softens and protects dry hands all day long.',
  },
  {
    'id': '5',
    'name': 'Olive Body Lotion',
    'category': 'Care',
    'price': 189.0,
    'image': 'https://images.pexels.com/photos/10566505/pexels-photo-10566505.jpeg?auto=compress&cs=tinysrgb&w=600',
    'description':
        'Lightweight body lotion enriched with olive oil and vitamin E. Absorbs quickly, leaving skin silky smooth and hydrated.',
  },
  {
    'id': '6',
    'name': 'Olive Candle',
    'category': 'Aroma',
    'price': 189.0,
    'image': 'https://images.pexels.com/photos/7234424/pexels-photo-7234424.jpeg?auto=compress&cs=tinysrgb&w=600',
    'description':
        'Hand-poured soy wax candle with a warm Mediterranean olive and herb fragrance. Burns cleanly for up to 40 hours.',
  },
  {
    'id': '7',
    'name': 'Olive Perfume',
    'category': 'Aroma',
    'price': 349.0,
    'image': 'https://images.pexels.com/photos/3831748/pexels-photo-3831748.jpeg?auto=compress&cs=tinysrgb&w=600',
    'description':
        'An elegant eau de parfum inspired by olive groves at sunrise. Fresh, earthy top notes with a warm woody base.',
  },
  {
    'id': '8',
    'name': 'Olive Leaf Tea',
    'category': 'Tea',
    'price': 149.0,
    'image': 'https://images.pexels.com/photos/8952727/pexels-photo-8952727.jpeg?auto=compress&cs=tinysrgb&w=600',
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
