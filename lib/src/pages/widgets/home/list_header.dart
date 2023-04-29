part of widgets;

class ListHeader extends StatelessWidget {
  final String? title;
  const ListHeader({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: primaryFontColor),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View all'),
        )
      ],
    );
  }
}
