import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_model/authentication/domain/product_creation_model.dart';
import 'package:mvvm_model/authentication/shared/provider.dart';

final getProduct = FutureProvider<List<Product>>((ref) async {
  final getpro = ref.read(remoteAuthProvider);

  return await getpro.getproduct();
});
