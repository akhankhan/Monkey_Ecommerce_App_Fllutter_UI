part of pages;

class PopularRestaurantList extends StatelessWidget {
  const PopularRestaurantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: ItemModel.popular.length,
      // padding: const EdgeInsets.symmetric(horizontal: 15.0),
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 30.h,
        );
      },
      itemBuilder: (context, index) {
        ItemModel data = ItemModel.popular[index];
        return Column(
          children: [
            Image.asset(data.imagePath!),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: primaryFontColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      ItemRating(rating: data.rating),
                      SizedBox(width: 10.w),
                      Text(
                        '(${data.ratingCount!} ratings)',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: secondaryFontColor),
                      ),
                      SizedBox(width: 10.w),
                      ItemLabel(label: data.lable),
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
