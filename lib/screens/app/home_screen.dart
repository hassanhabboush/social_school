import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_school/screens/widgets/poster_body.dart';
import 'package:social_school/screens/widgets/column_app_bar.dart';

// import 'get';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final RxBool isVisible = false.obs;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(); // يكرر الدوران بلا توقف
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
    isVisible.value = true; // تحديث قيمة isVisible إلى true
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 70),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ColumnAppBar(
                      icon: Icons.home, title: 'Home', onPressed: () {}),
                  ColumnAppBar(
                      icon: Icons.chat_bubble_outline_rounded,
                      title: 'Chats',
                      onPressed: () {
                        Navigator.pushNamed(context, '/search_chat_screen');
                      }),
                  ColumnAppBar(
                      icon: Icons.person_2_outlined,
                      title: 'Profile',
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit_profile_screen');
                      }),
                ],
              ),
            )),
        elevation: 20,
        shadowColor: const Color(0xff000000).withOpacity(0.16),
        backgroundColor: Colors.white,
        title: const Text(
          'Newsfeed',
          style: TextStyle(
            color: Color(0xff21A28B),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff21A28B),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search_screen');
            },
            icon: const Icon(
              Icons.search_rounded,
              color: Color(0xff21A28B),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Color(0xff21A28B),
            ),
            padding: EdgeInsets.zero,
          ),
        ],
      ),
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Obx(() {
              return Visibility(
                visible: isVisible.value,
                child: FutureBuilder<bool>(
                  future:
                      Future.delayed(const Duration(seconds: 5), () => true),
                  builder:
                      (BuildContext context, AsyncSnapshot<bool> snapshot) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      return RotationTransition(
                        turns: _animation,
                        child: Image.asset('assets/icons/metro-spinner.png'),
                      );
                    }
                    if (snapshot.hasError) {
                      return Container(
                        color: Colors.red,
                        width: 200,
                        height: 200,
                        child: const Center(
                          child: Text('Error'),
                        ),
                      );
                    }
                    if (snapshot.data == true) {
                      return const PostersBody();
                      //   RotationTransition(
                      //   turns: _animation,
                      //   child: Image.asset('assets/icons/metro-spinner.png'),
                      // );
                    }
                    return Container(
                      color: Colors.blue,
                      width: 200,
                      height: 200,
                    );
                  },
                ),
              );
            }),
            // Image.asset('assets/icons/metro-spinner.png'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(bottom: 39, right: 24),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: const Color(0xff21A28B),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 20,
                        color: const Color(0xff000000).withOpacity(0.26),
                      ),
                    ]),
                child: Image.asset('assets/icons/path.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}