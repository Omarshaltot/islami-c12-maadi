import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/radioItem.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset("assets/imgs/radio_image.png"),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: radioItem(),
            );
          },
        )),
      ],
    );
  }
}
