import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('设置'),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: const Icon(Icons.cloud_upload_rounded),
                title: const Text('备份 & 恢复'),
                subtitle: const Text('在设备或云端上备份 / 恢复您的设置'),
                onTap: () => context.push('/settings/backup'),
              ),
              SwitchListTile(
                value: true,
                secondary: const Icon(Icons.help_outline_rounded),
                title: const Text('初学者模式'),
                subtitle: const Text('在页面中显示帮助文本'),
                onChanged: (value) {},
              ),
              ListTile(
                leading: const Icon(Icons.file_present_rounded),
                title: const Text('许可'),
                subtitle: const Text('浏览许可信息'),
                onTap: () => context.push('/settings/license'),
              ),
              ListTile(
                leading: const Icon(Icons.code_rounded),
                title: const Text('前往 GitHub'),
                subtitle: const Text('浏览 Quick Find 在 GitHub 上的代码仓库'),
                onTap: () {},
              ),
            ],
          ))
        ],
      ),
    );
  }
}
