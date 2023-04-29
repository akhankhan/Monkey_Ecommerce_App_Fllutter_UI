part of pages;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Good morning Akila!'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.cartShopping),
          )
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 / 2),
            child: CurrentLocationButton(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 / 2),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Serach food',
              ),
            ),
          ),
          const SizedBox(height: 10),
          const HomeCategoryList(),

          // Popluar Restaurant
          const SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 / 2),
            child: const ListHeader(title: 'Popular Restaurants'),
          ),
          const PopularRestaurantList(),

          //Most Popular
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 / 2),
            child: const ListHeader(title: 'Most Popular'),
          ),
          const MostPopularList(),

          // Recent item
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 / 2),
            child: const ListHeader(title: 'Recent Items'),
          ),
          const RecentItemList(),
        ],
      ),
    );
  }
}
