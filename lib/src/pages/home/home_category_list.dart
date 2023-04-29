part of pages;

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: CategoryModel.list.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 30.w,
          );
        },
        itemBuilder: (context, index) {
          CategoryModel data = CategoryModel.list[index];
          return Column(
            children: [
              Container(
                width: 300.w,
                height: 300.w,
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
              Text(
                data.label!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: primaryFontColor,
                    ),
              )
            ],
          );
        },
      ),
    );
  }
}
