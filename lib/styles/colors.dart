part of styles;

const Color mainColor = Color(0xFFFc6011);
const Color primaryFontColor = Color(0XFF4A4B4D);
const Color secondaryFontColor = Color(0XFF7C7D7E);
const Color placeholderColor = Color(0xFFF2F2F2);

MaterialColor mainColorSwatch = MaterialColor(
  mainColor.value,
  const <int, Color>{
    50: Color(0xFFFFECE2),
    100: Color(0xFFFECFB8),
    200: Color(0xFFFEB088),
    300: Color(0xFFFD9058),
    400: Color(0xFFFC7835),
    500: mainColor,
    600: Color(0xFFFC580F),
    700: Color(0xFFFB4E0C),
    800: Color(0xFFFB440A),
    900: Color(0xFFFA3305),
  },
);
