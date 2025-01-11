import 'package:flutter/material.dart';

class CustomTopAppbar extends StatelessWidget {
  const CustomTopAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color.fromARGB(
                255,
                44,
                44,
                44,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 110.0,
                  ),
                  child: Text(
                    "Portfolio",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[],
                ),
              ],
            ),
          );
          ;
        } else if (constraints.maxWidth > 800 && constraints.maxWidth <= 1200) {
          return Text("Tablet");
        } else {
          return Text("Mobile");
        }
      },
    );
  }
}
