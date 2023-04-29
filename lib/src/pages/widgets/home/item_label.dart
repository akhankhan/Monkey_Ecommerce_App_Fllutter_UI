part of widgets;

class ItemLabel extends StatelessWidget {
  final String? label;

  const ItemLabel({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Cafe',
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: secondaryFontColor),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child:
              const Icon(Icons.fiber_manual_record, color: mainColor, size: 6),
        ),
        Text(
          '$label',
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: secondaryFontColor),
        ),
      ],
    );
  }
}
