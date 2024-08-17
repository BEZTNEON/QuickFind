import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LocationDetailPage extends StatelessWidget {
  const LocationDetailPage(this.locationId, {super.key});

  final int locationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('Fridge'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete_forever_rounded)),
              IconButton(
                  onPressed: () => context.push('/locations/edit/$locationId'),
                  icon: const Icon(Icons.edit_rounded))
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const ListTile(
              leading: Icon(Icons.location_on_rounded),
              title: Text('父位置'),
              subtitle: Text('/Kitchen'),
            ),
          ])),
        ],
      ),
    );
  }
}
