import 'package:flutter/material.dart';
//import 'package:onboarding_app/onboarding_screen.dart'; // Import your onboarding screen

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const OnboardingPage(
      title: "This is Big Ass band",
      description:
          "Big Ass is a Thai rock band. It was originally a pop rock band but the music moved toward hardcore punk in some of the band's recent works. During the band's early years until mid-2012, the band's leading vocalist was Ekkarat  Wongchalard. Later half of 2012, Daycha  Konalo became the new leading vocalist, replacing Ekkarat in EP Dan Neramit, their seventh album released in April 2013.Their latest album is The Lion, the eighth album released in 2017",
      image: "asset/image/BG.jpg",
    ),
    const OnboardingPage(
      title: "This is Potato band",
      description:
          "Potato is a Thai rock band founded in 2001. The band currently has 5 members including lead vocalist Patchai Pukdesusook, guitarist Teekatas Taviarayakul, bassist Piyawat Anukul, drummer Kan Uamsupan, and keyboardist Kiattiyos Malathong. It has released 8 studio albums, one extended play, and several compilation albums. It is considered one of the most successful Thai rock bands.",
      image: "asset/image/PT.jpg",
    ),
    const OnboardingPage(
      title: "This is Paradox band",
      description:
          "Paradox is a Thai rock band founded in 1996 while they were studying in Faculty of Education, Chulalongkorn University. They are famous as a unique live band in Thailand",
      image: "asset/image/PD.jpg",
    ),
    const OnboardingPage(
      title: "This is Modern dog band",
      description:
          "Modern Dog is a Thai rock band, formed in 1992. They issued their first album in 1994, selling 500,000 copies.[citation needed] The band has issued five studio albums, selling a total of 2 million copies.",
      image: "asset/image/MD.jpg",
    ),
    const OnboardingPage(
      title: "This is Taitosmith",
      description:
          "Taitosmith stylized as TaitosmitH) is a Thai rock band that defines itself as a modern phleng phuea chiwit (Thai protest song) band",
      image: "asset/image/TT.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return _pages[index];
            },
          ),
          Positioned(
            bottom: 30.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage > 0)
                  ElevatedButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: const Text("Previous"),
                  ),
                if (_currentPage < _pages.length - 1)
                  ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: const Text("Next"),
                  ),
                if (_currentPage == _pages.length - 1)
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Get Started"),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300.0), // Image
        const SizedBox(height: 20.0),
        Text(
          title,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        Text(
          description,
          style: const TextStyle(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
