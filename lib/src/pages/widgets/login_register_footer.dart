part of widgets;

class LoginRegisterFooter extends StatelessWidget {
  final String question;
  final String actionText;
  final String actionRoute;

  const LoginRegisterFooter({
    Key? key,
    required this.question,
    required this.actionText,
    required this.actionRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: question,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: primaryFontColor,
              ),
          children: [
            TextSpan(
              text: actionText,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacementNamed(context, actionRoute);
                },
            )
          ]),
    );
  }
}
