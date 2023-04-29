part of pages;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: currentIndex == -1 ? mainColor : secondaryFontColor,
        onPressed: () {
          setState(() {
            currentIndex = -1;
          });
        },
        child: const Icon(FontAwesomeIcons.house),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        elevation: 20,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...MainMenuModel.list.map((MainMenuModel data) {
              return data.isBlank
                  ? SizedBox(width: 24.w)
                  : InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = data.index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(data.icon,
                                color: currentIndex == data.index
                                    ? mainColor
                                    : secondaryFontColor),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              data.label!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: currentIndex == data.index
                                        ? mainColor
                                        : secondaryFontColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    );
            })
          ],
        ),
      ),
    );
  }

  _getBody() {
    switch (currentIndex) {
      case 0:
        return const MenuPage();

      case 1:
        return const OfferPage();

      case 2:
        return const ProfilePage();

      case 3:
        return const MorePage();

      default:
        return const HomePage();
    }
  }
}
