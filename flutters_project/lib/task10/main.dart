import 'package:flutter/material.dart';
import 'package:flutters_project/task10/resources/strings.dart';
import 'package:flutters_project/task10/avatar.dart';
import 'package:flutters_project/task10/info.dart';
import 'package:flutters_project/task10/resources/images.dart';
import 'package:flutters_project/task10/subinfo.dart';


void main() {
  runApp(const CardApp());
}

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CardWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Визитка",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 8),
            AvatarWidget(
              photoPath: ImagesData.myPhoto,
            ),
            const SizedBox(height: 8),
            const InfoWidget(
              name: StringsData.name,
              profession: StringsData.profession,
            ),
            const SizedBox(height: 8),
            SubinfoWidget(
              header: StringsData.aboutMe, 
              information: StringsData.biographyInfo, 
              imgPath: ImagesData.infoIcon
            ),
            const SizedBox(height: 8),
            SubinfoWidget(
              header: StringsData.skills, 
              information: StringsData.skillsInfo, 
              imgPath: ImagesData.skillsIcon),
          ],
        ),
      ),
    );
  }
}