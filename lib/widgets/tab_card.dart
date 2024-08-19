import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  final String label;
  final int selected;
  final int index;
  const TabCard(
      {super.key, required this.label, this.selected = 0, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 64,
      child: Card(
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.5),
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: selected == index
            ? const Color.fromRGBO(251, 98, 54, 1)
            : Colors.white,
        child: Center(
          child: Text(label,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Gilroyy',
                color: selected == index ? Colors.white : null,
              )),
        ),
      ),
    );
  }
}