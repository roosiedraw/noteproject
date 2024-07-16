import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteproject/screens/mainPage.dart';
import 'package:noteproject/screens/temalar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primaryContainer,
              ]),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  textAlign: TextAlign.center,
                  "My Diary Wall",
                  style: GoogleFonts.pacifico(
                    textStyle: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Hoşgeldiniz",
                          style: GoogleFonts.pacifico(
                              textStyle:
                                  Theme.of(context).textTheme.titleLarge),
                        ),
                        Text(
                          "Size Nasıl Hitap Edelim",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                border: Border.all(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextField(
                                onTap: () {
                                  isvisible = true;
                                },
                                cursorHeight: 20,
                                autocorrect: true,
                                autofocus: false,
                                decoration: InputDecoration.collapsed(
                                  hintText: "Adınız",
                                  hintStyle:
                                      Theme.of(context).textTheme.labelLarge,
                                  border: InputBorder.none,
                                ),
                                maxLines: 1,
                              ),
                            )),
                        Visibility(
                          visible: isvisible,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context)
                                      .buttonTheme
                                      .colorScheme
                                      ?.background,
                                  fixedSize: const Size(240, 40)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MainPage()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Devam",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt_outlined,
                                    size: 30,
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.1,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
