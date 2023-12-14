import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList(
      {super.key,
      required this.name,
      required this.icon,
      required this.onClick});

  final String name;
  final IconData icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        leading: Icon(
          icon,
          size: 26,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        title: Text(name,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground, fontSize: 24
                // fontWeight: FontWeight.w600,
                )),
        onTap: () => onClick(),
      ),
    );
  }
}
