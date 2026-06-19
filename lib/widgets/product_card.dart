import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ürün görseli alanı
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: _categoryColor(),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Icon(
                    _categoryIcon(),
                    size: 48,
                    color: const Color(0xFF6B7A52),
                  ),
                ),
              ),
            ),

            // Ürün bilgileri
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kategori etiketi
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F1E9),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      product.category,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Color(0xFF6B7A52),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Ürün adı
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2D2D2D),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),

                  // Fiyat
                  Text(
                    '₺${product.price.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6B7A52),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
