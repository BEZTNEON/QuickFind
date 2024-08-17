import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';
import '../widgets/custom_wrap.dart';
import '../widgets/product_tag.dart';

class EditProductPage extends StatelessWidget {
  const EditProductPage(this.productId, {super.key});

  final int? productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // key: formKey,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title:
                  productId == null ? const Text('添加产品') : const Text('编辑产品'),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.save_rounded))
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                const CustomTextField(
                  // controller: nameController,
                  icon: Icon(Icons.now_widgets_rounded),
                  label: '物品名称（必填）',
                ),
                CustomWrap(
                  [
                    ProductTag(
                      '添加标签',
                      onTap: () {},
                    ),
                  ],
                  padding: const EdgeInsets.fromLTRB(56, 10, 16, 2),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.calendar_month_rounded),
                  title: const Text('到期日期类型：'),
                  onTap: () {},
                ),
                const CustomTextField(
                  // controller: dueDaysController,
                  icon: Icon(null),
                  label: '到期天数',
                ),
                const Divider(),
                const CustomTextField(
                  // controller: safeAmountController,
                  icon: Icon(Icons.ten_k_rounded),
                  label: '安全库存',
                ),
                const CustomTextField(
                  // controller: defaultIncrementController,
                  icon: Icon(null),
                  label: '默认添加数量',
                ),
                const CustomTextField(
                  // controller: defaultDecrementController,
                  icon: Icon(null),
                  label: '默认消耗数量',
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.location_on_rounded),
                  title: const Text('默认位置：'),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.file_present_rounded),
                  title: const Text('附件、图片：未添加'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.qr_code_rounded),
                  title: const Text('条码：未添加'),
                  onTap: () {},
                ),
                const CustomTextField(
                  // controller: descriptionController,
                  icon: Icon(Icons.notes_rounded),
                  label: '备注',
                  maxLines: null,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
