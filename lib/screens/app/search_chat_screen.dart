import 'package:flutter/material.dart';
import 'package:social_school/screens/widgets/column_app_bar.dart';

class SearchChatScreen extends StatelessWidget {
  const SearchChatScreen({super.key});

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
                    icon: Icons.home_outlined,
                    title: 'Home',
                    onPressed: () {
                      Navigator.pushNamed(context, '/home_screen');
                    },
                  ),
                  ColumnAppBar(
                      icon: Icons.chat_bubble,
                      title: 'Chats',
                      onPressed: () {}),
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
          'Chats',
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for any message',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff0C715F).withOpacity(0.45)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xff21A28B),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xff21A28B),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xff21A28B),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xff21A28B),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xff21A28B),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xff21A28B),
                        ),
                      ),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: ()
                        {
                          Navigator.pushNamed(context, '/chats_screen');
                        },
                        child: Container(
                          width: 451,
                          height: 77,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: const Color(0xff21A28B), width: 1),
                          ),
                          child: const Row(
                            children: [
                              SizedBox(width: 13),
                              CircleAvatar(
                                backgroundColor: Color(0xffAEAEAE),
                                radius: 18,
                              ),
                              SizedBox(width: 11),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Rayan',
                                            style: TextStyle(
                                                color: Color(0xff21A28B),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'poppins'),
                                          ),
                                          SizedBox(width: 20),
                                          Image(
                                              image: AssetImage(
                                                  'assets/icons/premiumuser.png'))
                                        ],
                                      ),
                                      Text(
                                        'Welcome back  in my app !!',
                                        style: TextStyle(
                                            color: Color(0xff21A28B),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'poppins'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 8),
                                      Text(
                                        '11:20 PM',
                                        style: TextStyle(
                                            color: Color(0xff21A28B),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'poppins'),
                                      ),
                                      SizedBox(height: 4),
                                      Image(
                                          image: AssetImage(
                                              'assets/icons/check.png'))
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 451,
                        height: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xff21A28B), width: 1),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(width: 13),
                            CircleAvatar(
                              backgroundColor: Color(0xffAEAEAE),
                              radius: 18,
                            ),
                            SizedBox(width: 11),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Rayan',
                                          style: TextStyle(
                                              color: Color(0xff21A28B),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'poppins'),
                                        ),
                                        SizedBox(width: 20),
                                        Image(
                                            image: AssetImage(
                                                'assets/icons/premiumuser.png'))
                                      ],
                                    ),
                                    Text(
                                      'This chat is locked',
                                      style: TextStyle(
                                          color: Color(0xffDB0000),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 180,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                        image:
                                            AssetImage('assets/icons/lock.png'))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 451,
                        height: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xff21A28B), width: 1),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(width: 13),
                            CircleAvatar(
                              backgroundColor: Color(0xffAEAEAE),
                              radius: 18,
                            ),
                            SizedBox(width: 11),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Rayan',
                                          style: TextStyle(
                                              color: Color(0xff21A28B),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'poppins'),
                                        ),
                                        SizedBox(width: 20),
                                        Image(
                                            image: AssetImage(
                                                'assets/icons/premiumuser.png'))
                                      ],
                                    ),
                                    Text(
                                      'This chat is locked',
                                      style: TextStyle(
                                          color: Color(0xffDB0000),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 180,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                        image:
                                            AssetImage('assets/icons/lock.png'))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 451,
                        height: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xff21A28B), width: 1),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(width: 13),
                            CircleAvatar(
                              backgroundColor: Color(0xffAEAEAE),
                              radius: 18,
                            ),
                            SizedBox(width: 11),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Rayan',
                                          style: TextStyle(
                                              color: Color(0xff21A28B),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'poppins'),
                                        ),
                                        SizedBox(width: 20),
                                        Image(
                                            image: AssetImage(
                                                'assets/icons/premiumuser.png'))
                                      ],
                                    ),
                                    Text(
                                      'Welcome back  in my app !!',
                                      style: TextStyle(
                                          color: Color(0xff21A28B),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    Text(
                                      '11:20 PM',
                                      style: TextStyle(
                                          color: Color(0xff21A28B),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                    SizedBox(height: 4),
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/check.png'))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 451,
                        height: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xff21A28B), width: 1),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(width: 13),
                            CircleAvatar(
                              backgroundColor: Color(0xffAEAEAE),
                              radius: 18,
                            ),
                            SizedBox(width: 11),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Rayan',
                                          style: TextStyle(
                                              color: Color(0xff21A28B),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'poppins'),
                                        ),
                                        SizedBox(width: 20),
                                        Image(
                                            image: AssetImage(
                                                'assets/icons/premiumuser.png'))
                                      ],
                                    ),
                                    Text(
                                      'Welcome back  in my app !!',
                                      style: TextStyle(
                                          color: Color(0xff21A28B),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    Text(
                                      '11:20 PM',
                                      style: TextStyle(
                                          color: Color(0xff21A28B),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                    SizedBox(height: 4),
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/check.png'))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 451,
                        height: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xff21A28B), width: 1),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(width: 13),
                            CircleAvatar(
                              backgroundColor: Color(0xffAEAEAE),
                              radius: 18,
                            ),
                            SizedBox(width: 11),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Rayan',
                                          style: TextStyle(
                                              color: Color(0xff21A28B),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'poppins'),
                                        ),
                                        SizedBox(width: 20),
                                        Image(
                                            image: AssetImage(
                                                'assets/icons/premiumuser.png'))
                                      ],
                                    ),
                                    Text(
                                      'Welcome back  in my app !!',
                                      style: TextStyle(
                                          color: Color(0xff21A28B),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 8),
                                    Text(
                                      '11:20 PM',
                                      style: TextStyle(
                                          color: Color(0xff21A28B),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'poppins'),
                                    ),
                                    SizedBox(height: 4),
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/check.png'))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
                child: Image.asset('assets/icons/path2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
