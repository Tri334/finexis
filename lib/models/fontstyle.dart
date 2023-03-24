import 'dart:ui';

class FontComponent {
  TextStyle size16Bold,
      size16Light,
      size18Bold,
      size18Light,
      size24Bold,
      size24Light,
      size32Bold,
      size32Light;

  FontComponent(
      {required this.size16Bold,
      required this.size16Light,
      required this.size18Bold,
      required this.size18Light,
      required this.size24Bold,
      required this.size24Light,
      required this.size32Bold,
      required this.size32Light});
}

var fontComponent = FontComponent(
  size16Bold: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
  size16Light: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
  size18Bold: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
  size18Light: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
  size24Bold: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
  size24Light: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
  size32Bold: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
  size32Light: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
);
