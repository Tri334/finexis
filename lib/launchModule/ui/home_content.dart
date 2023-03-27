import 'dart:convert';
import 'package:finexis/models/color_palette.dart';
import 'package:finexis/models/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MerantiContent extends StatefulWidget {
  const MerantiContent({super.key});

  @override
  State<MerantiContent> createState() => _MerantiContentState();
}

class _MerantiContentState extends State<MerantiContent> {
  List<dynamic> merantiData = [];

  Future fetchContent() async {
    final response =
        await http.get(Uri.parse("http://127.0.0.1:8000/api/listmeranti/"));
    if (response.statusCode == 200) {
      setState(() {
        merantiData = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchContent();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Row(
          children: [
            Image.asset("images/meranti_series.png", scale: 2),
            const SizedBox(width: 5,),
            Text(
              "Meranti",
              style: fontComponent.roboto16w500,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView.builder(
          itemCount: merantiData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(merantiData[index]['cl_invest_name']),
              subtitle: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: merantiData[index]['cl_current_price']),
                    const TextSpan(text: '\n'),
                    TextSpan(text: merantiData[index]['cl_precentage_stonk']),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}

class FamContent extends StatefulWidget {
  const FamContent({super.key});

  @override
  State<FamContent> createState() => _FamContentState();
}

class _FamContentState extends State<FamContent> {
  List<dynamic> famdata = [];

  Future fetchContent() async{
    final response = await http.get(Uri.parse("http://127.0.0.1:8000/api/listfam/"));
    if (response.statusCode == 200) {
      setState(() {
        famdata = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    fetchContent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Row(
          children: [
            Image.asset("images/fam_series.png", scale: 2),
            const SizedBox(width: 5,),
            Text(
              "Meranti",
              style: fontComponent.roboto16w500,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView.builder(
          itemCount: famdata.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(famdata[index]['cl_invest_name']),
              subtitle: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: famdata[index]['cl_current_price']),
                    const TextSpan(text: '\n'),
                    TextSpan(text: famdata[index]['cl_precentage_stonk']),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}