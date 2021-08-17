import 'package:flutter/material.dart';
import 'package:zarcony_app/components/custom_shape.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 2500,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: CustomPaint(
        size: Size(200, 50),
        painter: AppBarPainter(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            Icon(Icons.place_outlined),
            Flexible(
              child: Text(
                'Mustafa St.......',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.323399995803833,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            )
          ]),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(1),
          margin: EdgeInsets.all(2),
          width: 49,
          height: 49,
          decoration:
              BoxDecoration(color: Colors.black54, shape: BoxShape.circle),
          child: CircleAvatar(
            backgroundColor: Colors.white,
          ),
        )
      ],
    );
  }
}
