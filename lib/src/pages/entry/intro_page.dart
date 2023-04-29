part of pages;

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  final List<IntroModel> _data = IntroModel.data;
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _positionedAnimation;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    _positionedAnimation = Tween<double>(begin: -50.h, end: 0.h).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      )..addListener(() {
          setState(() {});
        }),
    );

    _pageController = PageController();
    _pageController.addListener(() {
      if (_activeIndex != _pageController.page!.round()) {
        _animationController.reset();
        _animationController.forward();
        _activeIndex = _pageController.page!.round();
      }
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _data.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    _data[index].imagePath!,
                    width: 1000.h,
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 900.h),
            child: SliderIndicator(
              length: _data.length,
              activeIndex: _activeIndex,
              indicator: Icon(
                Icons.fiber_manual_record_rounded,
                color: placeholderColor,
                size: 32.w,
              ),
              activeIndicator: Icon(
                Icons.fiber_manual_record_rounded,
                color: mainColor,
                size: 32.w,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 700.h),
            child: Text(
              _data[_activeIndex].title!,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: primaryFontColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(bottom: 450.h + _positionedAnimation.value),
            child: SizedBox(
              height: 200.h,
              child: Text(
                _data[_activeIndex].desc!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: secondaryFontColor,
                      height: 4.h,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 120.h),
            child: ElevatedButton(
              onPressed: () {
                if (_activeIndex + 1 >= _data.length) {
                  Navigator.pushReplacementNamed(context, kRouteStarter);
                  // Navigator.pushReplacementNamed(context, '/starter');
                  return;
                }
                _pageController.animateToPage(
                  _activeIndex + 1,
                  duration: const Duration(microseconds: 250),
                  curve: Curves.easeIn,
                );
              },
              child: const Text('Next'),
            ),
          )
        ],
      ),
    );
  }
}
