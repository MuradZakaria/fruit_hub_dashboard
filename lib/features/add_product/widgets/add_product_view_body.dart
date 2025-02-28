import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/product_entity.dart';
import 'package:fruit_hub_dashboard/features/add_product/manger/cubit/add_product_cubit.dart';
import 'package:fruit_hub_dashboard/features/add_product/widgets/image_field.dart';
import 'package:fruit_hub_dashboard/features/add_product/widgets/is_feature_ch_box.dart';
import 'package:fruit_hub_dashboard/features/add_product/widgets/is_organic.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, description, code;
  late int numberOfCalories;
  late int expireMonths;
  late num price;
  File? image;
  bool isChecked = false;
  bool isOrganic = false;
  late int unitAmount;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: 'Product Name',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  description = value!;
                },
                hintText: 'Product Description',
                textInputType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  price = num.parse(value!);
                },
                hintText: 'Product Prcie',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
                hintText: 'Product Code',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ), const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  numberOfCalories = int.parse(value!);
                },
                hintText: 'Product Calories',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
               CustomTextFormField(
                onSaved: (value) {
               expireMonths = int.parse(value!);
                },
                hintText: 'Expaire Month',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
               CustomTextFormField(
                onSaved: (value) {
              unitAmount = int.parse(value!);
                },
                hintText: 'Product Unit Amount',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),

              ImageField(
                onFileChanged: (image) {
                  this.image = image;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              IsOrganicCheckBox(
                onChanged: (value) {
                  isOrganic = value;
                },
              ),
               const SizedBox(
                height: 16,
              ),
              IsFeatureCheckBox(
                onChanged: (value) {
                  isChecked = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  if (image != null) {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      ProductInputEntity inputEntity = ProductInputEntity(
                          unitAmount: unitAmount,
                          name: name,
                          description: description,
                          price: price.toString(),
                          image: image!,
                          code: code,
                          isFeature: isChecked,
                          expireMonths: expireMonths,
                          numberOfCalories: numberOfCalories,
                          isOrganic: isOrganic,
                          reviews: []
                          );
                          
                      context
                          .read<AddProductCubit>()
                          .addProduct(addProductInputEntity: inputEntity);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please Add Image'),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Add Product',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
