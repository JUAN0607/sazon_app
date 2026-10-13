import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: const [
        ChatTile(
          name: 'Valentina Ríos',
          message: '¿Me pasas la receta de la soda de frutos rojos?',
          time: '9:41',
          avatarText: 'VR',
          avatarColor: AppColors.primary,
          avatarImage: 'assets/images/perfil.jpg',
          unread: 2,
        ),
        ChatTile(
          name: 'Camilo Herrera',
          message: 'Reservé la mesa para el sábado a las 7',
          time: '8:15',
          avatarText: 'CH',
          avatarColor: AppColors.secondary,
          unread: 1,
        ),
        ChatTile(
          name: 'Club de Cocina',
          message: 'Laura: El reto de esta semana es el desayuno',
          time: 'Ayer',
          avatarText: 'CC',
          avatarColor: Color(0xFFF4A340),
          unread: 5,
        ),
        ChatTile(
          name: 'Laura Gómez',
          message: 'Ese restaurante estuvo buenísimo',
          time: 'Ayer',
          avatarText: 'LG',
          avatarColor: Color(0xFF7B5EA7),
        ),
        ChatTile(
          name: 'Andrés Molina',
          message: 'Gracias por el dato del café',
          time: 'Lun',
          avatarText: 'AM',
          avatarColor: Color(0xFF3A7BD5),
        ),
        ChatTile(
          name: 'Sofía Cárdenas',
          message: 'Te mandé las fotos del almuerzo',
          time: 'Dom',
          avatarText: 'SC',
          avatarColor: AppColors.like,
        ),
        ChatTile(
          name: 'Mercado Paloquemao',
          message: 'Mañana llegan frutas frescas',
          time: 'Sáb',
          avatarText: 'MP',
          avatarColor: Color(0xFF5D4037),
        ),
      ],
    );
  }
}
