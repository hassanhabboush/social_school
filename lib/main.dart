import 'package:flutter/material.dart';
import 'package:social_school/screens/app/chat_lock_screen.dart';
import 'package:social_school/screens/app/chats_screen.dart';
import 'package:social_school/screens/app/edit_profile_screen.dart';
import 'package:social_school/screens/app/following_card_body.dart';
import 'package:social_school/screens/app/notification_screen.dart';
import 'package:social_school/screens/app/profile_screen.dart';
import 'package:social_school/screens/app/search_chat_screen.dart';
import 'package:social_school/screens/app/home_screen.dart';
import 'package:social_school/screens/app/launch_screen.dart';
import 'package:social_school/screens/widgets/you_card_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: EditProfileScreen(),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => const LaunchScreen(),
        '/home_screen' : (context) => const HomeScreen(),
        '/search_chat_screen' : (context) => const SearchChatScreen(),
        '/chats_screen' : (context) => const ChatsScreen(),
        '/profile_screen' : (context) => const ProfileScreen(),
        '/edit_profile_screen' : (context) => const EditProfileScreen(),
        '/chat_lock_screen' : (context) => const ChatlockScreen(),
        '/notification_screen' : (context) => const NotificationScreen(),
        '/you_card_body' : (context) => const YouCardBody(),
        '/following_card_body.dart' : (context) => const FollowingCardBody(),
      },
    );
  }
}
