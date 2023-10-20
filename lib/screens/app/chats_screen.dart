import 'package:flutter/material.dart';
import 'package:social_school/screens/widgets/column_app_bar.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    String _content = 'Search';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff21A28B)),
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        elevation: 20,
        shadowColor: const Color(0xff000000).withOpacity(0.16),
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffAEAEAE),
              radius: 18,
            ),
            SizedBox(width: 14),
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
                    SizedBox(width: 7),
                    Image(image: AssetImage('assets/icons/premiumuser.png'))
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
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            offset: const Offset(20, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
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
                  value: 'Search',
                  child: Text(
                    'Search',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Color(0xff21A28B),
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Media visibility',
                  child: Text(
                    'Media visibility',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Color(0xff21A28B),
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Change background',
                  child: Text(
                    'Change background',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Color(0xff21A28B),
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Save conversation',
                  child: Text(
                    'Save conversation',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Color(0xff21A28B),
                    ),
                  ),
                ),
                 PopupMenuItem(
                  onTap: (){
                    Navigator.pushNamed(context, '/chat_lock_screen');
                  },
                  value: 'Lock chat',
                  child: const Text(
                    'Lock chat',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Color(0xff21A28B),
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Delete conversation',
                  child: Text(
                    'Delete conversation',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Color(0xffDE0000),
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 'Block',
                  child: Text(
                    'Block',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Color(0xffDE0000),
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.center,
                  width: 81,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color(0xffCFF1FE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '23 April',
                    style: TextStyle(
                        color: Color(0xff0C715F),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'poppins',
                        fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 19),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  width: 240,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff21A28B),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'السلام عليكم ورحمة الله وبركاته , أهلا وسهلا',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '11:24 PM',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                    ],
                  )),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    width: 245,
                    height: 53,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff21A28B), width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                          topRight: Radius.circular(16)),
                    ),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'السلام عليكم ورحمة الله وبركاته',
                              style: TextStyle(
                                  color: Color(0xff21A28B),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'poppins',
                                  fontSize: 9),
                            )),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              '11:24 PM',
                              style: TextStyle(
                                  color: Color(0xff21A28B),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'poppins',
                                  fontSize: 9),
                            )),
                      ],
                    )),
              ),
              SizedBox(height: 30),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  width: 256,
                  height: 105,
                  decoration: BoxDecoration(
                    color: Color(0xff21A28B),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'السلام عليكم ورحمة الله وبركاته , أهلا وسهلا السلام عليكم ورحمة الله وبركاته , أهلا وسهلا السلام عليكم ورحمة الله وبركاته , أهلا وسهلا السلام عليكم ورحمة الله وبركاته , أهلا وسهلا السلام عليكم ورحمة الله وبركاته , أهلا وسهلا ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '11:24 PM',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                    ],
                  )),
              SizedBox(height: 14),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  width: 140,
                  height: 49,
                  decoration: BoxDecoration(
                    color: Color(0xff21A28B),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'أهلا وسهلا بك معنا هنا',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '11:24 PM',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                    ],
                  )),
              SizedBox(height: 14),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  width: 256,
                  height: 203,
                  decoration: BoxDecoration(
                    color: Color(0xffB2B2B2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Text(
                    'IMAGE',
                    style: TextStyle(
                        color: Color(0xff6A6A6A),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'poppins',
                        fontSize: 52),
                  )),
              SizedBox(height: 21),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  width: 245,
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff21A28B), width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'السلام عليكم ورحمة الله وبركاته, أهلا بك معنا',
                            style: TextStyle(
                                color: Color(0xff21A28B),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '11:24 PM',
                            style: TextStyle(
                                color: Color(0xff21A28B),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'poppins',
                                fontSize: 9),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 120),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TextField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            prefixIcon: InkWell(
                onTap: () {

                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                    content: SizedBox(
                      height: 200,
                      width: 336,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Add Attachment",
                            style: TextStyle(
                              color: Color(0xff21A28B),
                              fontSize: 19,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xff21A28B).withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Icon(Icons.camera_alt_rounded,color: Color(0xff21A28B),),
                              ),

                        SizedBox(width: 16),
                              Text("Camera",style: TextStyle(color: Color(0xff21A28B),fontSize: 16,fontFamily: 'poppins',fontWeight: FontWeight.w700),)

                            ],
                          ),
                          const SizedBox(
                            height: 12
                          ),

                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xff21A28B).withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Icon(Icons.photo,color: Color(0xff21A28B),),
                              ),

                              SizedBox(width: 16),
                              Text("Photos From Gallery",style: TextStyle(color: Color(0xff21A28B),fontSize: 16,fontFamily: 'poppins',fontWeight: FontWeight.w700),)

                            ],
                          ),
                          const SizedBox(
                              height: 12
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Color(0xff21A28B).withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Icon(Icons.video_call,color: Color(0xff21A28B),),
                              ),

                              SizedBox(width: 16),
                              Text("Videos From Files",style: TextStyle(color: Color(0xff21A28B),fontSize: 16,fontFamily: 'poppins',fontWeight: FontWeight.w700),)

                            ],
                          ),

                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(14),
                    ),
                    actions: <Widget>[
                      Center(
                        child: ElevatedButton(
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
                                BorderRadius.circular(21),
                              ),
                              minimumSize:
                              const Size(129, 41)),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              color: Color(0xff21A28B),
                              fontSize: 19,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  );
                },

                child: Image(image: AssetImage('assets/icons/attachment.png'))),
            suffixIcon:
                Image(image: AssetImage('assets/icons/audio_recording.png')),
            hintText: 'Type your message here',
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
              borderRadius: BorderRadius.circular(8),
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
      ),
    );
  }
}

