part of models;

class MainMenuModel {
  final int index;
  final IconData? icon;
  final String? label;
  final bool isBlank;

  MainMenuModel(
      {required this.index, this.icon, this.label, this.isBlank = false});

  static List<MainMenuModel> list = [
    MainMenuModel(
      index: 0,
      label: 'Menu',
      icon: FontAwesomeIcons.tableCellsLarge,
    ),
    MainMenuModel(
        index: 1, label: 'Offers', icon: FontAwesomeIcons.bagShopping),
    MainMenuModel(
      index: -1,
      isBlank: true,
    ),
    MainMenuModel(
      index: 2,
      label: 'Profile',
      icon: FontAwesomeIcons.userLarge,
    ),
    MainMenuModel(
      index: 3,
      label: 'More',
      icon: FontAwesomeIcons.inbox,
    ),
  ];
}
