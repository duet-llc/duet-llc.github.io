import 'package:jaspr/jaspr.dart';

class Logo extends StatelessComponent {
  const Logo({
    this.lightSrc = 'assets/images/logo.svg',
    this.darkSrc = 'assets/images/logo/logo-white.svg',
    this.alt = 'Duet Logo',
    this.width = 28,
    this.height = 28,
    super.key,
  });

  final String lightSrc;
  final String darkSrc;
  final String alt;
  final int width;
  final int height;

  @override
  Component build(BuildContext context) {
    return img(
      src: lightSrc,
      alt: alt,
      width: width,
      height: height,
      classes: 'logo',
    );
  }

  @css
  static List<StyleRule> get styles => [
    css(':root[data-theme="dark"]', [
      css('.logo').styles(
        filter: Filter.invert(1),
      ),
    ]),
  ];
}
