import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/numeric_counter.dart';

class LaboratoryScreen extends StatelessWidget {
  const LaboratoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Row(
              children: [
                Icon(Icons.science, color: AppColors.primary, size: 36),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Ajusta cuántas porciones quieres preparar con los botones.',
                    style: TextStyle(color: AppColors.textDark, fontSize: 14, height: 1.4),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const NumericCounter(),
        ],
      ),
    );
  }
}
