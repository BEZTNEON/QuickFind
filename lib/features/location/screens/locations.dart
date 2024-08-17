import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('位置'),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.select_all_rounded)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list_rounded)),
              const IconButton(
                  onPressed: null, icon: Icon(Icons.delete_outline_rounded)),
              IconButton(
                  onPressed: () => context.push('/locations/add'),
                  icon: const Icon(Icons.add_rounded)),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              title: const Text('Fridge'),
              onTap: () => context.push('/locations/0'),
            )
          ]))
        ],
      ),
    );
  }
}
