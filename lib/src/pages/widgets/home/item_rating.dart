part of widgets;

class ItemRating extends StatelessWidget {
  final double? rating;
  const ItemRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
            rating: rating!,
            itemCount: 1,
            itemSize: 40.r,
            itemBuilder: (context, index) {
              return const Icon(Icons.star, color: mainColor);
            }),
        SizedBox(
          width: 10.w,
        ),
        Text(
          '${rating}',
          style:
              Theme.of(context).textTheme.caption!.copyWith(color: mainColor),
        ),
      ],
    );
  }
}
