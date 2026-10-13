import 'package:flutter/material.dart';
import 'theme/app_colors.dart';
import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const SazonApp());
}

class SazonApp extends StatelessWidget {
  const SazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sazón',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildTitle() {
    if (_selectedIndex == 1) {
      return const Text('Chats');
    }
    if (_selectedIndex == 2) {
      return const Text('Laboratorio de widgets');
    }
    return const Row(
      children: [
        Icon(Icons.local_dining, color: Colors.white),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sazón',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Recetas y lugares para compartir',
              style: TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBody() {
    if (_selectedIndex == 1) {
      return const ChatsScreen();
    }
    if (_selectedIndex == 2) {
      return const LaboratoryScreen();
    }
    return const HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: _buildTitle(),
        actions: [
          if (_selectedIndex == 0)
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
          if (_selectedIndex == 1)
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          if (_selectedIndex == 1)
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit_square),
            ),
          if (_selectedIndex == 0)
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/perfil.jpg'),
              ),
            ),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textMuted,
        selectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.science_outlined),
            activeIcon: Icon(Icons.science),
            label: 'Laboratorio',
          ),
        ],
      ),
    );
  }
}
