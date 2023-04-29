part of pages;

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, kRouteIntro);
      //Navigator.push(context, MaterialPageRoute(builder: (context) => const IntroPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/FoodBg.png',
            fit: BoxFit.fill,
            //width: double.infinity,
            //height: MediaQuery.of(context).size.height,
          ),
          const SplashLogo(),
        ],
      ),
    );
  }
}
