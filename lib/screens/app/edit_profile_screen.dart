import 'package:flutter/material.dart';
import 'package:social_school/screens/widgets/column_app_bar.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String _content = 'Search';

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
                      }),
                  ColumnAppBar(
                      icon: Icons.chat_bubble_outline_rounded,
                      title: 'Chats',
                      onPressed: () {
                        Navigator.pushNamed(context, '/search_chat_screen');
                      }),
                  ColumnAppBar(
                      icon: Icons.person, title: 'Profile', onPressed: () {}),
                ],
              ),
            )),
        elevation: 20,
        shadowColor: const Color(0xff000000).withOpacity(0.16),
        backgroundColor: Colors.white,
        title: const Text(
          '@rayan',
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
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 190,
                  decoration: const BoxDecoration(color: Color(0xffADC7D1)),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 175),
                  height: 310,
                  width: 463,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        color: const Color(0xff000000).withOpacity(0.14),
                        blurRadius: 20)
                  ]),

                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Text(
                                '24',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff21A28B)),
                              ),
                              Text(
                                'Posts',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff21A28B)
                                        .withOpacity(0.50)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                '24',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff21A28B)),
                              ),
                              Text(
                                'Following',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff21A28B)
                                        .withOpacity(0.50)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                '24',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff21A28B)),
                              ),
                              Text(
                                'Following',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff21A28B)
                                        .withOpacity(0.50)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                '24',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff21A28B)),
                              ),
                              Text(
                                'Joined classes',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff21A28B)
                                        .withOpacity(0.50)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                const Color(0xff21A28B).withOpacity(0.15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(291, 41)),
                        child: SizedBox(
                          width: 291,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/feather-edit.png'),
                              const SizedBox(width: 10.9),
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Color(0xff21A28B),
                                  fontSize: 15,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Welcome back  in my app !!',
                        style: TextStyle(
                          color: Color(0xff21A28B),
                          fontSize: 10,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'age : 20 years',
                        style: TextStyle(
                          color: Color(0xff21A28B),
                          fontSize: 10,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'School : Tesla',
                        style: TextStyle(
                          color: Color(0xff21A28B),
                          fontSize: 10,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 442,
                  height: 170,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff21A28B)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xffAEAEAE),
                          radius: 19,
                        ),
                        title: Row(
                          children: [
                            Text(
                              'أ. عمر سعيد العبري',
                              style: TextStyle(
                                  color: Color(0xff21A28B),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'poppins'),
                            ),
                            SizedBox(width: 20),
                            Image(
                                image:
                                    AssetImage('assets/icons/premiumuser.png'))
                          ],
                        ),
                        trailing: Text(
                          '17 munites ago',
                          style: TextStyle(
                              color: Color(0xff21A28B),
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'poppins'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Welcome back  in my app !!',
                          style: TextStyle(
                              color: Color(0xff21A28B),
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'poppins'),
                        ),
                      ),
                      const SizedBox(height: 35),
                      Divider(
                        height: 2,
                        color: const Color(0xff1FA18A).withOpacity(0.23),
                        endIndent: 9,
                        indent: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              PopupMenuButton<String>(
                                offset: const Offset(20, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onSelected: (String onSelectItem) {
                                  if (_content != onSelectItem) {
                                    setState(() {
                                      _content = onSelectItem;
                                    });
                                  }
                                },
                                itemBuilder: (context) {
                                  return [
                                    const PopupMenuItem(
                                      child: Text(
                                        'PopupMenuItem (1)',
                                        style: TextStyle(fontFamily: 'Cairo'),
                                      ),
                                      value: 'PopupMenuItem (1)',
                                    ),
                                    const PopupMenuItem(
                                      child: Text(
                                        'PopupMenuItem (2)',
                                        style: TextStyle(fontFamily: 'Cairo'),
                                      ),
                                      value: 'PopupMenuItem (2)',
                                    ),
                                    const PopupMenuItem(
                                      child: Text(
                                        'PopupMenuItem (3)',
                                        style: TextStyle(fontFamily: 'Cairo'),
                                      ),
                                      value: 'PopupMenuItem (3)',
                                    ),
                                  ];
                                },
                                color: const Color(0xff21A28B),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    '8 Likes',
                                    style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff21A28B)),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_outline,
                                        color: Color(0xffE33145),
                                        size: 16,
                                      )),
                                  const Text(
                                    '12 Comment',
                                    style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff21A28B)),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.comment_outlined,
                                        color: Color(0xff3DAAEB),
                                        size: 16,
                                      )),
                                  const Text(
                                    '43 Views',
                                    style: TextStyle(
                                        fontSize: 6,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff21A28B)),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.remove_red_eye,
                                        color: Color(0xff7D7D7D),
                                        size: 16,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/profile_screen');
            },
            child: Container(
              margin: const EdgeInsets.only(top: 170),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.14),
                            blurRadius: 20,
                          ),
                        ],
                        color: const Color(0xffD5D5D5),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        )),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 165),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Rayan',
                              style: TextStyle(
                                  color: Color(0xff21A28B),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'poppins'),
                            ),
                            SizedBox(width: 7),
                            Image(
                                image: AssetImage('assets/icons/premiumuser.png'))
                          ],
                        ),
                        Text(
                          'Student',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff21A28B).withOpacity(0.40),
                              fontSize: 12,
                              fontFamily: 'poppins'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
