import 'package:flutter/material.dart';

class BackupPage extends StatelessWidget {
  const BackupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('备份 & 恢复'),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              leading: const Icon(Icons.folder_rounded),
              title: const Text('备份路径'),
              subtitle: const Text('/com.quickfind.app/backup/'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.save_rounded),
              title: const Text('备份'),
              subtitle: const Text('备份数据到文件中'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.restore_rounded),
              title: const Text('恢复'),
              subtitle: const Text('从备份文件中恢复'),
              onTap: () {},
            ),
          ]))
        ],
      ),
    );
  }
}
