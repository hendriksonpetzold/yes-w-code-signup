import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';
import 'package:yes_w_code_project/page/home_page/components/articles.dart';
import 'package:yes_w_code_project/page/home_page/components/login_text_with_color.dart';
import 'package:yes_w_code_project/page/home_page/components/recommended_foryou_listview.dart';
import 'package:yes_w_code_project/page/home_page/components/youtube_video_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF362166), size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 36,
              width: 38,
              child: Image.asset(
                'assets/yeswcodelogoimage.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Button(
                onTap: () {
                  FirebaseAuth.instance.signOut().then(
                    (value) {
                      Navigator.of(context).pushNamed('/');
                    },
                  );
                },
                buttonName: 'Logout',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_outlined,
              size: 40,
              color: Color(0xFF362166),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              size: 40,
              color: Color(0xFF362166),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.account_circle_outlined,
              size: 40,
              color: Color(0xFF362166),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const LoginTextWithColor(text: 'Contiunar Assistindo'),
              const SizedBox(
                height: 10,
              ),
              const YoutubeVideoListView(
                urlYoutube: 'https://www.youtube.com/watch?v=3PalLqQPQdA&t=67s',
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginTextWithColor(text: 'Recomendado para você'),
              const RecommendedForyouListview(),
              const SizedBox(
                height: 10,
              ),
              const LoginTextWithColor(text: 'Artigos e Leitura'),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 600,
                child: Column(
                  children: const [
                    Articles(
                      description: 'Descrição',
                      title: 'Titulo',
                      image: 'assets/Articles1.jpg',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Articles(
                      description: 'Descrição',
                      title: 'Titulo',
                      image: 'assets/Articles2.jpg',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Articles(
                      description: 'Descrição',
                      title: 'Titulo',
                      image: 'assets/Articles1.jpg',
                    ),
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
