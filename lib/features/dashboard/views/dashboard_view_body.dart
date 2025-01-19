import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/widgets/custom_button.dart';

import '../../add_product/presentation/views/add_product_view.dart';


class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
             CustomButton(
              text: 'Add Data',
              onPressed: (){
                Navigator.pushNamed(context, AddProductView.routeName);
              },
             )
            ],
          ),
      ),
    );
    
  }
}