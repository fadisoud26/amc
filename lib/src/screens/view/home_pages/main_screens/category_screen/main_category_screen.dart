
import 'package:flutter/material.dart';

import 'category_screen.dart';

class MainCategoryScreen extends StatelessWidget {
  const MainCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CategoryScreen(),
            // CategoryFotter(),
          ],
        ),
      ),
    );
  }
}
