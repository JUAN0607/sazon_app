import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? image;
  final IconData icon;
  final Color color;

  const CategoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.image,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white, width: 3),
        image: image != null
            ? DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withValues(alpha: 0.65),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white, size: 22),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 10),
          child: Text(
            'Explora por categoría',
            style: TextStyle(
              color: AppColors.textDark,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: const [
              CategoryCard(
                title: 'Desayunos',
                subtitle: '24 recetas',
                image: 'assets/images/plato.jpg',
                icon: Icons.egg_alt,
                color: AppColors.primary,
              ),
              CategoryCard(
                title: 'Bebidas',
                subtitle: '18 recetas',
                image: 'assets/images/bebida.jpg',
                icon: Icons.local_bar,
                color: AppColors.like,
              ),
              CategoryCard(
                title: 'Restaurantes',
                subtitle: '12 lugares',
                image: 'assets/images/cocina.jpg',
                icon: Icons.storefront,
                color: AppColors.secondary,
              ),
              CategoryCard(
                title: 'Postres',
                subtitle: 'Muy pronto',
                icon: Icons.cake,
                color: Color(0xFFF4A340),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
