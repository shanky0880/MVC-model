import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_model/authentication/application/product_notifier.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getdata = ref.watch(getProduct);
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
        ),
        body: getdata.when(
            data: (data) {
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return Text(item.title);
                  });
            },
            error: (m, p) => const Text('error'),
            loading: () => const Center(child: CircularProgressIndicator())));
  }
}
