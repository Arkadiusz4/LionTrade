import 'package:flutter/material.dart';

class LtAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  final Function? onPressed;

  @override
  final Size preferredSize;

  LtAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : preferredSize = const Size.fromHeight(60.0);

  factory LtAppBar.withBackIcon({
    required String title,
    required Function? onPressed,
  }) {
    return LtAppBar(
      title: title,
      icon: Icons.arrow_back_ios_rounded,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Hero(
                tag: 'topBarBtn',
                child: Card(
                  shape: shape,
                  child: MaterialButton(
                    height: 50.0,
                    minWidth: 50.0,
                    elevation: 10.0,
                    shape: shape,
                    onPressed: () {
                      if (onPressed != null) {
                        onPressed!();
                      }
                    },
                    child: Icon(icon),
                  ),
                ),
              ),
              Hero(
                tag: 'title',
                transitionOnUserGestures: true,
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 23.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  ShapeBorder shape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(30),
    ),
  );
}
