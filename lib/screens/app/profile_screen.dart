import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  String _content = 'Search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff21A28B)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        elevation: 20,
        shadowColor: const Color(0xff000000).withOpacity(0.16),
        backgroundColor: Colors.white,
        title:  const Text(
          '@Rayan',
          style: TextStyle(
              color: Color(0xff21A28B),
              fontSize: 19,
              fontWeight: FontWeight.w700,
              fontFamily: 'poppins'),
        ),
        actions: [
          PopupMenuButton<String>(
            // color: Colors.grey,
            offset: const Offset(20, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
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
                    'Search',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: const Color(0xff21A28B),
                    ),
                  ),
                  value: 'Search',
                ),
                const PopupMenuItem(
                  child: Text(
                    'Media visibility',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: const Color(0xff21A28B),
                    ),
                  ),
                  value: 'Media visibility',
                ),
                const PopupMenuItem(
                  child: Text(
                    'Change background',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: const Color(0xff21A28B),
                    ),
                  ),
                  value: 'Change background',
                ),
                const PopupMenuItem(
                  child: Text(
                    'Save conversation',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: const Color(0xff21A28B),
                    ),
                  ),
                  value: 'Save conversation',
                ),
                const PopupMenuItem(
                  child: Text(
                    'Lock chat',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: const Color(0xff21A28B),
                    ),
                  ),
                  value: 'Lock chat',
                ),
                const PopupMenuItem(
                  child: Text(
                    'Delete conversation',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: const Color(0xffDE0000),
                    ),
                  ),
                  value: 'Delete conversation',
                ),
                const PopupMenuItem(
                  child: Text(
                    'Block',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: const Color(0xffDE0000),
                    ),
                  ),
                  value: 'Block',
                ),
              ];
            },
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
                decoration: const BoxDecoration(
                  color: Color(0xffADC7D1)
                ),

                ),

                Container(
                  // margin: EdgeInsets.only(top: 175),
                  height: 310,
                  width: 463,
                  decoration: BoxDecoration(

                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 0),
                            color: const Color(0xff000000).withOpacity(0.14),
                            blurRadius: 20
                        )
                      ]
                  ),

                  child: Column(
                      children: [

                        const SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Text('24',style: TextStyle(fontSize: 25,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: Color(0xff21A28B)),),
                                Text('Posts',style: TextStyle(fontSize: 12,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: const Color(0xff21A28B).withOpacity(0.50)),),
                              ],
                            ),
                            Column(
                              children: [
                                const Text('24',style: TextStyle(fontSize: 25,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: Color(0xff21A28B)),),
                                Text('Following',style: TextStyle(fontSize: 12,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: const Color(0xff21A28B).withOpacity(0.50)),),

                              ],
                            ),
                            Column(
                              children: [
                                const Text('24',style: TextStyle(fontSize: 25,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: Color(0xff21A28B)),),
                                Text('Following',style: TextStyle(fontSize: 12,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: const Color(0xff21A28B).withOpacity(0.50)),),

                              ],
                            ),
                            Column(
                              children: [
                                const Text('24',style: TextStyle(fontSize: 25,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: Color(0xff21A28B)),),
                                Text('Joined classes',style: TextStyle(fontSize: 12,fontFamily: 'poppins',fontWeight: FontWeight.w700,color: const Color(0xff21A28B).withOpacity(0.50)),),

                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,

                                  backgroundColor:
                                  const Color(0xff21A28B).withOpacity(0.15),
                                  shape:
                                  RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  minimumSize:
                                  const Size(192, 41)),
                              child: const Text(
                                'Follow',
                                style: TextStyle(
                                  color: Color(0xff21A28B),
                                  fontSize: 15,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,

                                  backgroundColor:
                                  const Color(0xff21A28B).withOpacity(0.15),
                                  shape:
                                  RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  minimumSize:
                                  const Size(129, 41)),
                              child: const Text(
                                'Send message',
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
                        const SizedBox(height: 15),
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
              SizedBox(height: 13),
              Container(
                width: 442,
                height: 170,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xff21A28B)),
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
                          Image(image: AssetImage('assets/icons/premiumuser.png'))
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                      ,
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
          Container(
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
                      )
                  ),
                ),
                const SizedBox(
                  width:22 ,
                ),
                Container(
                  // margin: EdgeInsets.only(top: 165),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height:22 ,
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
                          Image(image: AssetImage('assets/icons/premiumuser.png'))
                        ],
                      ),

                      Text('Student',style: TextStyle(fontWeight: FontWeight.w700,color: const Color(0xff21A28B).withOpacity(0.40),fontSize: 12,fontFamily: 'poppins'),)
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
