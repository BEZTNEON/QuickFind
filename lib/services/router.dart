import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/location/screens/detail.dart';
import '../features/location/screens/edit.dart';
import '../features/location/screens/locations.dart';
import '../features/product/screens/detail.dart';
import '../features/product/screens/edit.dart';
import '../features/product/screens/products.dart';
import '../features/setting/screens/backup.dart';
import '../features/setting/screens/settings.dart';
import '../widgets/custom_navigation.dart';

final _rootKey = GlobalKey<NavigatorState>();

final routers = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: '/products',
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            CustomNavigation(navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/products',
                builder: (context, state) => const ProductsPage(),
                routes: [
                  GoRoute(
                    path: 'add',
                    parentNavigatorKey: _rootKey,
                    pageBuilder: (context, state) {
                      return const CupertinoPage(child: EditProductPage(null));
                    },
                  ),
                  GoRoute(
                    path: 'edit/:id',
                    parentNavigatorKey: _rootKey,
                    pageBuilder: (context, state) {
                      return const CupertinoPage(child: EditProductPage(0));
                    },
                  ),
                  GoRoute(
                    path: ':id',
                    parentNavigatorKey: _rootKey,
                    pageBuilder: (context, state) {
                      return const CupertinoPage(child: ProductDetailPage(0));
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/locations',
                builder: (context, state) => const LocationsPage(),
                routes: [
                  GoRoute(
                    path: 'add',
                    parentNavigatorKey: _rootKey,
                    pageBuilder: (context, state) {
                      return const CupertinoPage(child: EditLocationPage(null));
                    },
                  ),
                  GoRoute(
                    path: 'edit/:id',
                    parentNavigatorKey: _rootKey,
                    pageBuilder: (context, state) {
                      return const CupertinoPage(child: EditLocationPage(0));
                    },
                  ),
                  GoRoute(
                    path: ':id',
                    parentNavigatorKey: _rootKey,
                    pageBuilder: (context, state) {
                      return const CupertinoPage(child: LocationDetailPage(0));
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                builder: (context, state) => const SettingsPage(),
                routes: [
                  GoRoute(
                    path: 'backup',
                    parentNavigatorKey: _rootKey,
                    builder: (context, state) => const BackupPage(),
                  ),
                  GoRoute(
                    path: 'license',
                    parentNavigatorKey: _rootKey,
                    builder: (context, state) => const LicensePage(),
                  ),
                ],
              ),
            ],
          ),
        ])
  ],
);
