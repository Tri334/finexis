import 'package:finexis/models/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/color_palette.dart';

class TabSwitcher extends StatefulWidget {
  const TabSwitcher({super.key});

  @override
  State<TabSwitcher> createState() => _TabSwitcherState();
}

class _TabSwitcherState extends State<TabSwitcher>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // Future<List<dynamic>> fetchContent() async{
  //   final response = await http.get(Uri.parse("uri"))
  // }

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TabBar(
          unselectedLabelColor: colorpalette.secondary06,
          labelColor: colorpalette.primaryTeal,
          controller: tabController,
          indicatorColor: colorpalette.primaryTeal,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Text(
              "Meranti",
              style: fontComponent.roboto16w500
            ),
            Text(
              "FAM",
              style: fontComponent.roboto16w500
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: TabBarView(
            controller: tabController,
            children: [Text("Meranti Content", ), Text("FAM Content")],
          ),
        ),
      ],
    );
  }
}
