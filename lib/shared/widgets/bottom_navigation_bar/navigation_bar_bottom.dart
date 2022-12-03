import 'package:flutter/material.dart';
import 'package:mono/shared/colors/app_colors.dart';

class NavigationBarBottom extends StatelessWidget {
  const NavigationBarBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              color: AppColors.green1,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.assessment_outlined,
              color: AppColors.green1,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.account_balance_wallet_outlined,
              color: AppColors.green1,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.person_outline,
              color: AppColors.green1,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
