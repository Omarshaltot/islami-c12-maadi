import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/tasbehBtn.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() {
    return Sebhatabastate();
  }
}

class Sebhatabastate extends State<SebhaTab> {
  static String reading = "astaghfirullah";
  static int sebhaCount = 0;
  static int counts = 0;
  static double num = 0;

  bool isDark = false; // Define the isDark variable

  @override
  Widget build(BuildContext context) {
    @override
    void getsebha() {
      num++;
      sebhaCount++;
      if (sebhaCount == 33 && reading == "astaghfirullah") {
        counts++;
        sebhaCount = 0;
        reading = "alhamdulillah";
      }
      if (sebhaCount == 33 && reading == "alhamdulillah") {
        sebhaCount = 0;
        reading = "subhanallah";
      }
      if (reading == "subhanallah" && sebhaCount == 33) {
        reading = "astaghfirullah";
        counts = 0;
        sebhaCount = 0;
      }
      setState(() {});
    }

    return Scaffold(
      body: Column(children: [
        SizedBox(
          width: 520,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 150,
                child: Transform.rotate(
                  angle: 0,
                  child: Container(
                      child: Image.asset(isDark
                          ? "assets/imgs/head_sebha_logo.png"
                          : "assets/imgs/head_sebha_dark.png")),
                ),
              ),
              Positioned(
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Transform.rotate(
                        angle: num,
                        child: Container(
                            child: Image.asset(isDark
                                ? "assets/imgs/body_sebha_logo.png"
                                : 'assets/imgs/body_sebha_dark.png')),
                      )
                    ])),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("tasbeh counts",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.onSecondary,
                  )),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary,
                ),
                margin: const EdgeInsets.all(20),
                height: 81,
                width: 69,
                child: Center(
                    child: Text(
                  "$sebhaCount",
                  style: TextStyle(
                    fontSize: 25,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                )),
              ),
              Container(
                child: Tasbehbtn(
                  tasbeh: reading,
                  onclick: getsebha,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
