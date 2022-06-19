import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrganismHomeAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  final List<Widget> actions;

  const OrganismHomeAppBar(
      {Key? key, required this.title, required this.appBar, required this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Column(
            children: [
              SvgPicture.asset('assets/logo.svg', width: 35, height: 35)
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
