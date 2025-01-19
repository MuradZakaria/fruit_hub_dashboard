import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/features/add_product/widgets/add_product_view_body.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

static const routeName = 'add-product';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
      ) ,
      body: const AddProductViewBody(),
    );
  }
}