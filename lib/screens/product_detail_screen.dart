import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;

  const ProductDetailScreen({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  Color _categoryColor() {
    switch (product.category) {
      case 'Oil':
        return const Color(0xFFF0E6C8);
      case 'Care':
        return const Color(0xFFE8F0E4);
      case 'Aroma':
        return const Color(0xFFEDE4F0);
      case 'Tea':
        return const Color(0xFFE4EFE8);
      default:
        return const Color(0xFFF0EDE4);
    }
  }

  IconData _categoryIcon() {
    switch (product.category) {
      case 'Oil':
        return Icons.water_drop_outlined;
      case 'Care':
        return Icons.spa_outlined;
      case 'Aroma':
        return Icons.local_fire_department_outlined;
      case 'Tea':
        return Icons.emoji_food_beverage_outlined;
      default:
        return Icons.eco_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F1E9),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ── Üst görsel alanı
                    Stack(
                      children: [
                        SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: product.image.isNotEmpty
                              ? Image.network(
                                  product.image,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(
                                    color: _categoryColor(),
                                    child: Center(
                                      child: Icon(
                                        _categoryIcon(),
                                        size: 100,
                                        color: const Color(0xFF6B7A52),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  color: _categoryColor(),
                                  child: Center(
                                    child: Icon(
                                      _categoryIcon(),
                                      size: 100,
                                      color: const Color(0xFF6B7A52),
                                    ),
                                  ),
                                ),
                        ),

                        // Geri butonu
                        Positioned(
                          top: 12,
                          left: 12,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 16,
                                color: Color(0xFF6B7A52),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // ── Ürün bilgileri
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Kategori
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFC9784A).withOpacity(0.12),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              product.category,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFFC9784A),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),

                          // Ürün adı
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2D2D2D),
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Fiyat
                          Text(
                            '₺${product.price.toStringAsFixed(0)}',
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF6B7A52),
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Ayraç
                          const Divider(color: Color(0xFFE0D9CE)),
                          const SizedBox(height: 16),

                          // Açıklama başlığı
                          const Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2D2D2D),
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Açıklama
                          Text(
                            product.description,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF6E6E6E),
                              height: 1.6,
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ── Add to Cart butonu
            Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 12,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    onAddToCart(product);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Product added to cart'),
                        backgroundColor: const Color(0xFF6B7A52),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6B7A52),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
