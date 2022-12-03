import 'package:flutter/material.dart';
import 'package:mono/modules/transactions/transactions_page.dart';
import 'package:mono/shared/colors/app_colors.dart';
import 'package:mono/shared/widgets/bottom_navigation_bar/navigation_bar_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransactionPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: AppColors.green1,
        backgroundColor: AppColors.green1,
        child: const Icon(Icons.add, size: 37),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavigationBarBottom(),
    );
  }
}
