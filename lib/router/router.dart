import 'package:auto_route/auto_route.dart';
import 'package:crypto_coins_list/features/crypto_coin/view/crypto_coin_screen.dart';
import 'package:crypto_coins_list/features/crypto_list/view/crypto_list_screen.dart';
import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/foundation.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CryptoListRoute.page, path: '/'),
        AutoRoute(page: CryptoCoinRoute.page),
      ];
}
