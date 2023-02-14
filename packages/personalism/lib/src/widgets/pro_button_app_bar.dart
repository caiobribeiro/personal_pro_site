import 'package:flutter/material.dart';
import 'package:personalism/src/effects/glass_box_effect.dart';

class ProBottomBar extends StatefulWidget {
  final void Function(int index) onIndexSelected;
  const ProBottomBar({
    super.key,
    required this.onIndexSelected,
  });

  @override
  State<ProBottomBar> createState() => _ProBottomBarState();
}

class _ProBottomBarState extends State<ProBottomBar> {
  int _selected = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: FrostedGlassBox(
        theHeight: 90,
        theWidth: 70,
        theChild: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconSize: 50,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black38,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.terminal),
              label: 'Projects',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: 'Curriculum',
            ),
          ],
          currentIndex: _selected,
          onTap: (index) {
            setState(() {
              widget.onIndexSelected(index);
              _selected = index;
            });
          },
        ),
      ),
    );
  }
}
