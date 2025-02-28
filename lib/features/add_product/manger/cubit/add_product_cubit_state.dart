part of 'add_product_cubit.dart';

@immutable
sealed class AddProductCubitState {}

final class AddProductCubitInitial extends AddProductCubitState {}
final class AddProductCubitLoading extends AddProductCubitState {}
final class AddProductCubitSuccess extends AddProductCubitState {}
final class AddProductCubitFailure extends AddProductCubitState {
  final String errorMessage;

  AddProductCubitFailure(this.errorMessage);
}
