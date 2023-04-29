part of pages;

class Starter extends StatelessWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const StarterPainter(),
          const SplashLogo(),
          Padding(
            padding: EdgeInsets.all(80.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Discover the best foods from over 1,00\nrestaurants and fast delivery to your\ndoorstep',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryFontColor,
                        height: 4.h,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 120.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, kRouteLogin);
                  },
                  // style: ElevatedButton.styleFrom(
                  //   primary: mainColor,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(50),
                  //   ),
                  //   minimumSize: const Size(double.infinity, 50),
                  //   padding: const EdgeInsets.all(16),
                  // ),
                  child: const Text('Login'),
                ),
                SizedBox(
                  height: 60.h,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, kRouteRegister);
                  },
                  child: const Text(
                    'Create an Account',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
