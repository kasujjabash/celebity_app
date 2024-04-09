import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text("Celebrity Online",
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          )),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
