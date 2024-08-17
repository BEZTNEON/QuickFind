import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_wrap.dart';
import '../widgets/product_tag.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage(this.productId, {super.key});

  final int productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('Milk'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete_forever_rounded)),
              IconButton(
                  onPressed: () => context.push('/products/edit/$productId'),
                  icon: const Icon(Icons.edit_rounded))
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const CustomWrap([
              ProductTag('奶制品', color: TagColors.information),
            ]),
            const ListTile(
              leading: Icon(Icons.ten_k_rounded),
              title: Text('数量'),
              subtitle: Text('2 瓶'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on_rounded),
              title: Text('位置'),
              subtitle: Text('Fridge'),
            ),
            const ListTile(
              leading: Icon(Icons.money_rounded),
              title: Text('价格'),
              subtitle: Text('25 CNY'),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_month_rounded),
              title: Text('上次购买'),
              subtitle: Text('2024/01/01（今天）'),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_month_rounded),
              title: Text('下次到期'),
              subtitle: Text('2024/01/01（今天）'),
            ),
            const ListTile(
              leading: Icon(Icons.notes_rounded),
              title: Text('备注'),
              subtitle: Text('暂无备注'),
            ),
          ])),
        ],
      ),
    );
  }
}
