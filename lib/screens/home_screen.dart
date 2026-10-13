import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      children: const [
        PromotionalBanner(
          title: 'Reto de la semana',
          description: 'Prepara un desayuno con ingredientes locales y compártelo con la comunidad.',
          icon: Icons.emoji_events,
          color: AppColors.banner,
          buttonText: 'Participar',
        ),
        ImageCarousel(),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
          child: Text(
            'Publicaciones recientes',
            style: TextStyle(
              color: AppColors.textDark,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        PostCard(
          userName: 'Valentina Ríos',
          location: 'Bogotá, Chapinero',
          avatarText: 'VR',
          avatarColor: AppColors.primary,
          image: 'assets/images/plato.jpg',
          description: 'Huevos al horno con tomate, queso y pan campesino. Listo en 20 minutos y perfecto para el domingo.',
          likes: 128,
          comments: 14,
        ),
        PostCard(
          userName: 'Camilo Herrera',
          location: 'Medellín, El Poblado',
          avatarText: 'CH',
          avatarColor: AppColors.secondary,
          image: 'assets/images/bebida.jpg',
          description: 'Soda de frutos rojos con limón. Una bebida fresca y fácil para acompañar el almuerzo.',
          likes: 86,
          comments: 9,
        ),
        PostCard(
          userName: 'Laura Gómez',
          location: 'Cali, San Antonio',
          avatarText: 'LG',
          avatarColor: Color(0xFFF4A340),
          image: 'assets/images/cocina.jpg',
          description: 'Conocimos este restaurante de cocina abierta. Se puede ver cómo preparan cada plato.',
          likes: 203,
          comments: 31,
        ),
      ],
    );
  }
}
