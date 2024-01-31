import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget {
  const AnimatedAppBar({super.key});

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  bool visible = true;

  bool visibleSearch = false;
  String selectedIcon = "home";

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: selectedIcon == "home" ? Colors.purple : null,
                borderRadius: BorderRadius.circular(25)
            ),
            padding: selectedIcon == "home" ? const EdgeInsets.only(right: 20) : null,
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        selectedIcon = "home";
                      });
                    }),
                Visibility(
                  visible: selectedIcon == "home",
                  child: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: selectedIcon == "search" ? Colors.purple : null,
                borderRadius: BorderRadius.circular(25)
            ),
            padding: selectedIcon == "search" ? const EdgeInsets.only(right: 20) : null,
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        selectedIcon = "search";
                      });
                    }),
                Visibility(
                  visible: selectedIcon == "search",
                  child: const Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),

          ),
          Container(
            decoration: BoxDecoration(
                color: selectedIcon == "stats" ? Colors.purple : null,
                borderRadius: BorderRadius.circular(25)
            ),
            padding: selectedIcon == "stats" ? const EdgeInsets.only(right: 20) : null,
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.pie_chart,
                      color: Colors.white,
                    ),
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        selectedIcon = "stats";
                      });
                    }),
                Visibility(
                  visible: selectedIcon == "stats",
                  child: const Text(
                    'Stats',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: selectedIcon == "history" ? Colors.purple : null,
                borderRadius: BorderRadius.circular(25)
            ),
            padding: selectedIcon == "history" ? const EdgeInsets.only(right: 20) : null,
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.access_time_outlined,
                      color: Colors.white,
                    ),
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        selectedIcon = "history";
                      });
                    }),
                Visibility(
                  visible: selectedIcon == "history",
                  child: const Text(
                    'History',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: selectedIcon == "profile" ? Colors.purple : null,
                borderRadius: BorderRadius.circular(25)
            ),
            padding: selectedIcon == "profile" ? const EdgeInsets.only(right: 20) : null,
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.person_outline_rounded,
                      color: Colors.white,
                    ),
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        selectedIcon = "profile";
                      });
                    }),
                Visibility(
                  visible: selectedIcon == "profile",
                  child: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
