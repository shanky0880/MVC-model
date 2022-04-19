import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_model/authentication/domain/ab_productlist.dart';
import 'package:mvvm_model/authentication/infra/remote_auth_service.dart';
import 'package:mvvm_model/authentication/shared/dioprovider.dart';

final remoteAuthProvider = Provider<Abproduct>((ref) {
  return RemoteAuth(ref.watch(dioProvider));
});
