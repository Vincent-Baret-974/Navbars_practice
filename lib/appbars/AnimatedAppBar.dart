import 'package:flutter/material.dart';

class AnimatedAppBar extends StatelessWidget {
  bool visible = true;
  bool visibleSearch = false;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: visible ? Colors.purple : null,
                borderRadius: BorderRadius.circular(25)
            ),
            padding: visible ? const EdgeInsets.only(right: 20) : null,
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    highlightColor: Colors.transparent,
                    onPressed: () {}),
                Visibility(
                  visible: visible,
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
                color: visibleSearch ? Colors.purple : null,
                borderRadius: BorderRadius.circular(25)
            ),
            padding: visibleSearch ? const EdgeInsets.only(right: 20) : null,
            child: Row(
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                Visibility(
                  visible: visibleSearch,
                  child: const Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),

          ),
          Container(
            child: IconButton(
                icon: const Icon(
                  Icons.pie_chart,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            child: IconButton(
                icon: const Icon(
                  Icons.access_time_outlined,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            child: IconButton(
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
