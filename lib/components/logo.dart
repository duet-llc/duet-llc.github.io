import 'package:jaspr/jaspr.dart';

class Logo extends StatelessComponent {
  final String src;
  final String alt;
  final int width;
  final int height;

  const Logo({
    this.src = 'assets/images/logo.svg',
    this.alt = 'Duet Logo',
    this.width = 28,
    this.height = 28,
  });

  @override
  Component build(BuildContext context) {
    return img(
      src: src,
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
