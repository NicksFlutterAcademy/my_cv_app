import 'package:flutter/material.dart';
import '../constants.dart';

class MyCVPage extends StatelessWidget {
  const MyCVPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Avatar Image
              SizedBox(height: 20),
              CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage("assets/flower.webp"),
              ),
              SizedBox(height: 10),
              Text(
                "Nick S",
                style: kTitleTextStyle,
              ),
              Text(
                "Flutter Developer",
                style: kRegularTextStyle,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: Icon(Icons.call, color: Colors.blueGrey, size: 30),
                    title: Center(
                        child:
                            Text("+38077777777", style: kCardElementTextStyle)),
                    trailing: SizedBox(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Card(
                  child: ListTile(
                    leading:
                        Icon(Icons.email, color: Colors.blueGrey, size: 30),
                    title: Center(
                      child: Text(
                        "email@email.com",
                        style: kCardElementTextStyle,
                      ),
                    ),
                    trailing: SizedBox(),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Education",
                              textAlign: TextAlign.center, style: kBoldTextStyle),
                          SizedBox(height: 3),
                          Text("IIR, Kyiv",
                              textAlign: TextAlign.center,
                              style: kRegularSmallTextStyle),
                          Text("Kozminski University, Warsaw",
                              textAlign: TextAlign.center,
                              style: kRegularSmallTextStyle),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Work Experience",
                              textAlign: TextAlign.center, style: kBoldTextStyle),
                          SizedBox(height: 3),
                          Text("English Teacher",
                              textAlign: TextAlign.center,
                              style: kRegularSmallTextStyle),
                          Text("Flutter Developer",
                              textAlign: TextAlign.center,
                              style: kRegularSmallTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
