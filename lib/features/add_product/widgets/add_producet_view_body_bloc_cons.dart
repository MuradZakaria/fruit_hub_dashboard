
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/helpers_fuction/build_error_bar.dart';
import 'package:fruit_hub_dashboard/features/add_product/manger/cubit/add_product_cubit.dart';
import 'package:fruit_hub_dashboard/features/add_product/widgets/add_product_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddProductViewBodyBlocBuilder extends StatelessWidget {
  const AddProductViewBodyBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductCubitState>(
      listener: (context, state) {
        if (state is AddProductCubitFailure) {
          buildBar(context, 'failed to add product');
          
        }else if(state is AddProductCubitSuccess){
       
          buildBar(context,('Product Add Successfully') );
        }
      
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddProductCubitLoading,
          child: const AddProductViewBody());
      },
    );
  }
}
