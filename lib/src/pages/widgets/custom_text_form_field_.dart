part of widgets;

class CustomTextFormField extends StatelessWidget {
  final String? labelText;

  const CustomTextFormField({
    Key? key,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: placeholderColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextFormField(
        style: const TextStyle(color: primaryFontColor),
        decoration: InputDecoration(
          labelText: labelText,
          isCollapsed: true,
        ),
      ),
    );
  }
}
