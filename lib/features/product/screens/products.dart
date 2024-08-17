import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_wrap.dart';
import '../widgets/product_tag.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('Quick Find'),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.select_all_rounded)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list_rounded)),
              const IconButton(
                  onPressed: null, icon: Icon(Icons.delete_outline_rounded)),
              const IconButton(
                  onPressed: null, icon: Icon(Icons.qr_code_scanner_rounded)),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              title: const Text('Milk'),
              subtitle: const CustomWrap(
                [
                  ProductTag('2 瓶'),
                  ProductTag(
                    '今天',
                    color: TagColors.warning,
                  ),
                  ProductTag('25 CNY'),
                ],
                padding: EdgeInsets.zero,
              ),
              onTap: () => context.push('/products/0'),
            )
          ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_rounded),
          onPressed: () => context.push('/products/add')),
    );
  }
}
