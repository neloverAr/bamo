class TagModel{
  String label;
  String icon;
  Function()? onTap;
  TagModel(
      {
        required this.label,
        required this.icon,
        this.onTap,
      });
}