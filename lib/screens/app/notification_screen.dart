import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_school/screens/widgets/you_card_body.dart';
import 'package:social_school/screens/widgets/poster_body.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with TickerProviderStateMixin {
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
        iconTheme: IconThemeData(color: Color(0xff21A28B)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 70),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/following_card_body.dart');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,

                        backgroundColor:
                         Colors.white,
                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(10),
                        ),
                        minimumSize:
                        const Size(185, 41)),
                    child: const Text(
                      'FOLLOWING',
                      style: TextStyle(
                        color: Color(0xff21A28B),
                        fontSize: 18,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/following_card_body.dart');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,

                        backgroundColor:
                        const Color(0xff21A28B).withOpacity(0.10),
                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(10),
                        ),
                        minimumSize:
                        const Size(185, 41)),
                    child: const Text(
                      'YOU',
                      style: TextStyle(
                        color: Color(0xff21A28B),
                        fontSize: 18,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        elevation: 20,
        shadowColor: const Color(0xff000000).withOpacity(0.16),
        backgroundColor: Colors.white,
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Color(0xff21A28B),
            fontSize: 19,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),

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
                  Future.delayed(const Duration(seconds: 1), () => true),
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
                      return const YouCardBody();
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
          ),

        ],
      ),
    );
  }
}