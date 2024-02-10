import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getappbar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _getHeader(),
      ),
    );
  }
}

PreferredSizeWidget _getappbar() {
  return AppBar(
    backgroundColor: Colors.black,
    title: Center(
      child: Text(
        "محمد نیک مرد",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    elevation: 6,
  );
}

Widget _getHeader() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _gettoppart(),
        SizedBox(height: 20.0),
        _geticons(),
        SizedBox(height: 20.0),
        _getcards(),
        SizedBox(height: 15.0, width: double.infinity),
        _gettext()
      ],
    ),
  );
}

Widget _gettoppart() {
  return Column(
    children: [
      SizedBox(height: 25.0),
      Center(
        child: CircleAvatar(
          backgroundImage: AssetImage("images/IMG_0208.JPG"),
          radius: 70,
        ),
      ),
      SizedBox(height: 15.0),
      Text(
        "محمد ام برنامه نویس فلاتر و دیزاینر اپ",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
      SizedBox(height: 5.0),
      Text(
        " عاشق برنامه نویسی ام و همیشه تلاش میکنم تا چیزای جدید یاد بگیرم و پیشرفت کنم ",
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _geticons() {
  final Uri instagramlink =
      Uri.parse("https://www.instagram.com/mohammad__nikmard/");
  final Uri telegramlink = Uri.parse("https://t.me/M_theSicko");
  final Uri githublink = Uri.parse("https://github.com/Mohammad-Nikmard");
  final Uri linkedinlink =
      Uri.parse("https://www.linkedin.com/in/mohammad-nikmard");
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(
        onPressed: () {
          launchUrl(instagramlink);
        },
        icon: FaIcon(FontAwesomeIcons.squareInstagram,
            color: Colors.red, size: 40),
      ),
      IconButton(
        onPressed: () {
          launchUrl(telegramlink);
        },
        icon: FaIcon(FontAwesomeIcons.telegram, color: Colors.blue, size: 40),
      ),
      IconButton(
        onPressed: () {
          launchUrl(githublink);
        },
        icon: FaIcon(FontAwesomeIcons.github,
            color: Colors.blueGrey[600], size: 40),
      ),
      IconButton(
        onPressed: () {
          launchUrl(linkedinlink);
        },
        icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue, size: 40),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.xTwitter,
          color: Colors.black,
          size: 40,
        ),
      ),
    ],
  );
}

Widget _getcards() {
  var list = [
    "Dart",
    "English Language",
    "Flutter",
    "BLoC",
    "Github",
  ];

  return Wrap(
    spacing: 10.0,
    runSpacing: 10.0,
    alignment: WrapAlignment.center,
    children: [
      for (var skills in list)
        Card(
          child: Column(
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                child: Image(
                  image: AssetImage("images/$skills.png"),
                ),
                padding: EdgeInsets.all(5.0),
              ),
              Text("$skills")
            ],
          ),
          elevation: 3,
          shadowColor: Colors.black,
        )
    ],
  );
}

Widget _gettext() {
  var list = [
    "سابقه ی یک سال کار با فلاتر",
    "مسلط به زبان دارت",
    "آشنا با معماری solid و Clean Code",
    "مسلط به state management هایی از جمله  BLoC",
    "آشنا با نحوه ی کار با Restful API",
    "آشنا با تحوه ی کار با دیتابیس هایی از جمله Hive",
    "مسلط به گیت و گیت هاب و گیت لب",
    "مسلط به زبان انگلیسی",
  ];

  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        width: double.infinity,
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "سابقه ی کاری من",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            for (var element in list)
              Text("$element",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 18))
          ],
        ),
      ),
    ],
  );
}
