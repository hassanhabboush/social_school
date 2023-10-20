import 'package:flutter/material.dart';

class YouCardBody extends StatelessWidget {
  const YouCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(right: 3,top: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          margin: EdgeInsets.zero,
          decoration: const BoxDecoration(
            border: Border(left: BorderSide(color: Colors.red, width: 6)),
          ),
          child: const ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffAEAEAE),
                  radius: 18,
                ),
                Image(image: AssetImage('assets/icons/like_circle.png'))
              ],
            ),
            title: Text(
              'محمد',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Noto Kufi Arabic',
                color: Color(0xff21A28B),
              ),
            ),
            subtitle: Text(
              'Liked Your Post',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: Color(0xff21A28B),
              ),
            ),
            trailing: Text(
              '1 Day',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: Color(0xff21A28B),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
