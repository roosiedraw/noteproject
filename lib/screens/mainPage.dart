import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:noteproject/screens/challengePage.dart';
import 'package:noteproject/screens/diaryPage.dart';
import 'package:noteproject/screens/notesPage.dart';
import 'package:noteproject/screens/profilePage.dart';
import 'package:noteproject/theme/customColorSheme.dart';
import 'package:noteproject/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> pageNameList = [
    "Günlük",
    'Görevlerim',
    'Alışkanlıklarım',
    'Profil'
  ];
  List<TabItem> items = [
    TabItem(
      icon: Icons.home,
      title: 'Günlük',
    ),
    TabItem(
      icon: Icons.search_sharp,
      title: 'Görevlerim',
    ),
    TabItem(
      icon: Icons.shopping_cart_outlined,
      title: 'Alışkanlıklarım',
    ),
    TabItem(
      icon: Icons.account_box,
      title: 'Profil',
    ),
  ];
  int visit = 0;
  String pageName = "";

  static List<Widget> _pageChanger = <Widget>[
    DiaryPage(),
    NotesPages(),
    ChallengePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      visit = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme customColorScheme = Theme.of(context).colorScheme;
    customColorScheme = customColorScheme;
    return Scaffold(
      backgroundColor: customColorScheme.background,
      appBar: AppBar(
        backgroundColor: customColorScheme.background,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined))
        ],
        centerTitle: false,
        title: Text(pageName),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _pageChanger.elementAt(visit),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: customColorScheme.primary,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.only(bottom: 10, right: 12, left: 10),
        child: BottomBarFloating(
          enableShadow: true,
          borderRadius: BorderRadius.circular(5),
          items: items,
          backgroundColor: customColorScheme.surface,
          color: Colors.white,
          colorSelected: customColorScheme.onSurface,
          indexSelected: visit,
          paddingVertical: 24,
          onTap: (int index) => setState(() {
            visit = index;
            pageName = pageNameList[index];
          }),
        ),
      ),
    );
  }
}














/*
                Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.1,
                color: Theme.of(context).colorScheme.primary,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                    },
                    child: Text(
                      "theme",
                      style: Theme.of(context).textTheme.labelLarge,
                    )))
 */