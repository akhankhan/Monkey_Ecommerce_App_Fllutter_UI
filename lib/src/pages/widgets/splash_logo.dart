part of widgets;

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/Monky.png',
          fit: BoxFit.fill,
          width: 500.w,
        ),
        SizedBox(
          height: 35.h,
        ),
        Text.rich(
          TextSpan(
            text: 'Meal ',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
            children: const [
              TextSpan(
                text: 'Monkey',
                style: TextStyle(color: primaryFontColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'FOOD DELIVERY',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: secondaryFontColor,
                letterSpacing: 8.w,
              ),
        )
      ],
    );
  }
}
