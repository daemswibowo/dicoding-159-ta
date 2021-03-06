import 'package:flutter/material.dart';
import 'package:get_motivated/components/organisms/home/app_bar.dart';
import 'package:get_motivated/components/organisms/home/data_list.dart';
import 'package:get_motivated/screens/information.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    goToInfo() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const InformationScreen()));
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: OrganismHomeAppBar(
        title: 'Get Motivated',
        appBar: AppBar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              iconSize: 24,
              icon: const Icon(
                Icons.info_outline_rounded,
                color: Colors.black,
              ),
              onPressed: goToInfo,
            ),
          ),
        ],
      ),
      body: const OrganismDataList(),
    );
  }
}
