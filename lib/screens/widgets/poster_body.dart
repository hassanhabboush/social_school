import 'package:flutter/material.dart';

class PostersBody extends StatefulWidget {
  const PostersBody({super.key});

  @override
  State<PostersBody> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<PostersBody> {
  String _content = 'PopupMenuItem (1)';

  @override
  Widget build(BuildContext context) {
    return
       Padding(
        padding:
            const EdgeInsets.only(top: 16.0, bottom: 13, left: 11, right: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            InkWell(
              onTap: (){
              // Navigator.pushNamed(context, '/');
              },
              child: Container(
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
            ),
            const SizedBox(height: 13),
            Container(
              width: 442,
              height: 324,
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
                      radius: 18,
                    ),
                    title: Row(
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
                        Image(image: AssetImage('assets/icons/premiumuser.png'))
                      ],
                    ),
                    trailing: Text(
                      '31 munites ago',
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
                  const SizedBox(height: 12),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    width: 414,
                    height: 186,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color(0xffAEAEAE),
                    ),
                    child: const Text('IMAGE',style: TextStyle(fontSize: 49,fontWeight: FontWeight.w700,color: Color(0xff6A6A6A)),),
                  ),
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
            const SizedBox(height: 13),
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
                      radius: 18,
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

            const SizedBox(height: 13),
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
                      radius: 18,
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
      );

  }
}
