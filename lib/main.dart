import 'package:custom_clock_app/ui/style.dart';
import 'package:custom_clock_app/utils/time_model.dart';
import 'package:custom_clock_app/widgets/clock_widget.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'widgets/clock_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

//homepage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TimerBuilder.periodic(
                const Duration(seconds: 1),
                builder: (context) {
                  var currentTime = DateTime.now();
                  String seconds = currentTime.second < 10
                      ? "0${currentTime.second}"
                      : "${currentTime.second}";
                  String minutes = currentTime.minute < 10
                      ? "0${currentTime.minute}"
                      : "${currentTime.minute}";
                  String hours = currentTime.hour < 10
                      ? "0${currentTime.hour}"
                      : "${currentTime.hour}";
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: AppStyle.mainTextThin,
                          ),
                          Text(
                            "$hours:$minutes:$seconds",
                            style: AppStyle.mainText,
                          ),
                        ],
                      ),
                      Center(
                        child: ClockWidget(TimeModel(currentTime.hour,
                            currentTime.minute, currentTime.second)),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Select another Time Zone..",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Divider(
                    color: Colors.black45,
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 24.0),
                      width: MediaQuery.of(context).size.width - 52,
                      height: 100.0,
                      padding: EdgeInsets.all(24.0),
                      decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sri Lanka",
                                style: AppStyle.mainTextWhite,
                              ),
                              Text(
                                "${DateTime.now().hour}:${DateTime.now().minute}",
                                style: AppStyle.mainTextWhite,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Today",
                            style: AppStyle.mainTextThinWhite,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24.0),
                      width: MediaQuery.of(context).size.width - 52,
                      height: 100.0,
                      padding: EdgeInsets.all(24.0),
                      decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Italy",
                                style: AppStyle.mainTextWhite,
                              ),
                              Text(
                                "${DateTime.now().hour}:${DateTime.now().minute}",
                                style: AppStyle.mainTextWhite,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Today",
                            style: AppStyle.mainTextThinWhite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6.0,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppStyle.primaryColor,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later), label: "Clock"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Alarm"),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: "Timer"),
        ],
      ),
    );
  }
}
