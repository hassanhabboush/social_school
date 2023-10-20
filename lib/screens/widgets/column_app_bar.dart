import 'package:flutter/material.dart';

class ColumnAppBar extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onPressed;

  const ColumnAppBar({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 73,
          height: 38,
          decoration: BoxDecoration(
            color: const Color(0xff21A28B).withOpacity(0.15),
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
               icon,
                color: const Color(0xff21A28B),
              )),
        ),
        const SizedBox(height: 5),
         Text(
          title,
          style: const TextStyle(
              color: Color(0xff21A28B),
              fontSize: 12,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins'),
        )
      ],
    );
  }
}
