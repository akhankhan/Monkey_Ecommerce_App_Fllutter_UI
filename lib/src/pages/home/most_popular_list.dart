part of pages;

class MostPopularList extends StatelessWidget {
  const MostPopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: ItemModel.mostPopular.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 30.w,
          );
        },
        itemBuilder: (context, index) {
          ItemModel data = ItemModel.mostPopular[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 700.w,
                height: 400.w,
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
              SizedBox(
                height: 25.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name!,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: primaryFontColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      ItemLabel(label: data.lable),
                      SizedBox(width: 10.w),
                      ItemRating(rating: data.rating),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
