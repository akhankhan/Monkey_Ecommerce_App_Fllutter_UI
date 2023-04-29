part of widgets;

class LoginRegisterHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  const LoginRegisterHeader(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60.h * 2.5),
        Text(
          title,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: primaryFontColor,
              ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: primaryFontColor,
              ),
        ),
        SizedBox(
          height: 120.h,
        ),
      ],
    );
  }
}
