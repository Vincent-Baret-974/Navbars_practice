import 'package:flutter/material.dart';

import '../main.dart';

class CenteredNotchAppBar extends StatelessWidget {
  const CenteredNotchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 15,
      color: dGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Expanded(
                    child: IconButton(
                        icon: const Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                        }),
                  ),
                  const SizedBox(height: 10),
                  const Expanded(
                      child:
                      Text(
                        'Home',
                        style: TextStyle(
                            color: dYellow
                        ),
                      )
                  )
                ],
              ),
              const SizedBox(width: 30),
              Column(
                children: [
                  Expanded(
                    child: IconButton(
                        icon: const Icon(
                          Icons.area_chart_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                        }),
                  ),
                  const SizedBox(height: 10),
                  const Expanded(
                      child:
                      Text(
                        'Statistic',
                        style: TextStyle(
                            color: dYellow
                        ),
                      )
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Expanded(
                    child: IconButton(
                        icon: const Icon(
                          Icons.credit_card_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                        }),
                  ),
                  const SizedBox(height: 10),
                  const Expanded(
                      child:
                      Text(
                        'Card',
                        style: TextStyle(
                            color: dYellow
                        ),
                      )
                  )
                ],
              ),
              const SizedBox(width: 30),
              Column(
                children: [
                  Expanded(
                    child: IconButton(
                        icon: const Icon(
                          Icons.person_outline_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                        }),
                  ),
                  const SizedBox(height: 10),
                  const Expanded(
                      child:
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: dYellow
                        ),
                      )
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}