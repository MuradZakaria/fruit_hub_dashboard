import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/product%20repo/product_repo.dart';
import 'package:fruit_hub_dashboard/core/services/get_it_service.dart';
import 'package:fruit_hub_dashboard/features/add_product/manger/cubit/add_product_cubit.dart';
import 'package:fruit_hub_dashboard/features/add_product/widgets/add_producet_view_body_bloc_cons.dart';
import 'package:fruit_hub_dashboard/features/add_product/widgets/app_bar_widget.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  static const routeName = 'add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Add Product'),
      body: BlocProvider(
        create: (context) => AddProductCubit(
          getIt.get<ImagesRepo>(),
          getIt.get<ProductRepo>(),
        ),
        child: const AddProductViewBodyBlocBuilder(),
      ),
    );
  }
}
