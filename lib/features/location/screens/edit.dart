import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';

class EditLocationPage extends StatelessWidget {
  const EditLocationPage(this.locationId, {super.key});

  final int? locationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // key: formKey,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title:
                  locationId == null ? const Text('添加产品') : const Text('编辑产品'),
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
                  label: '位置名称（必填）',
                ),
                ListTile(
                  leading: const Icon(Icons.location_on_rounded),
                  title: const Text('父位置：未选择'),
                  onTap: () {},
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
