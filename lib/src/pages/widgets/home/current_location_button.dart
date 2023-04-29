part of widgets;

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery to',
            style: Theme.of(context).textTheme.caption!.copyWith(
                  color: secondaryFontColor,
                ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                'Current Location',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: primaryFontColor,
                    ),
              ),
              SizedBox(
                width: 50.w,
              ),
              const Icon(
                FontAwesomeIcons.chevronDown,
                size: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
