import 'package:chateo_app/common/constants.dart';
import 'package:chateo_app/common/theme.dart';
import 'package:chateo_app/pages/chat_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: AppConstants.url,
    anonKey: AppConstants.anonKey,
  );
  runApp(
    DevicePreview(
      builder: (context) => const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      title: 'Chateo',
      home: const ChatPage(),
    );
  }
}
