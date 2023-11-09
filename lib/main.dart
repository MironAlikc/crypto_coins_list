import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            labelSmall: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          dividerColor: Colors.white24,
          listTileTheme: const ListTileThemeData(
            iconColor: Colors.white,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 31, 31, 31),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
          // useMaterial3: true,
          ),
      routes: {
        '/': (context) => const CryptoListScreen(),
        '/coin': (context) => const CryptoCoinScreen(),
      },
    );
  }
}

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({
    super.key,
  });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, i) => const Divider(),
          itemCount: 10,
          itemBuilder: (context, i) {
            const coinName = 'Bitcoin';
            return ListTile(
              leading: Image.asset(
                'assets/Bitcoin_logo.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'Bitcoin',
                style: theme.textTheme.bodyMedium,
              ),
              subtitle: Text(
                '20000\$',
                style: theme.textTheme.labelSmall,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/coin',
                  arguments: coinName,
                );
              },
            );
          }),
    );
  }
}

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provie Strings arge');
    // if (args == null) {
    //   log('you must provie arge');
    //   return;
    // }
    // if (args is! String) {
    //   log('You must provie Strings arge');
    // }
    coinName = args as String?;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
      ),
    );
  }
}
