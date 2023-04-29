part of pages;

class RecentItemList extends StatelessWidget {
  const RecentItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: ItemModel.recentItem.length,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 30.h,
        );
      },
      itemBuilder: (context, index) {
        ItemModel data = ItemModel.recentItem[index];
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 250.w,
              height: 250.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(data.imagePath!),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                    )
                  ]),
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.name!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: primaryFontColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  ItemLabel(label: data.lable),
                  SizedBox(height: 10.h),
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
