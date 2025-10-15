import 'package:duet_llc_website/components/logo.dart';
import 'package:jaspr_content/components/theme_toggle.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/jaspr_content.dart';

abstract class SharedLayout extends PageLayoutBase {
  const SharedLayout();

  @override
  @mustCallSuper
  Iterable<Component> buildHead(Page page) {
    return [
      ...super.buildHead(page),
      link(rel: 'icon', type: 'image/svg', href: '/assets/favicon.svg'),
    ];
  }

  @css
  static List<StyleRule> get styles => [
    css('body', [
      css('.container', [
        css('header', [
          css(
            '.title',
          ).styles(display: Display.flex, margin: Spacing.only(left: Unit.em(2)), alignItems: AlignItems.center),
        ]).styles(
          display: Display.flex,
          margin: Spacing.only(top: Unit.em(1)),
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.center,
        ),
        css('.main'),
      ]).styles(
        width: Unit.pixels(1024),
        maxWidth: Unit.percent(100),
        margin: Spacing.symmetric(vertical: Unit.zero, horizontal: Unit.expression('auto')),
      ),
    ]).styles(margin: Spacing.all(Unit.zero)),
  ];

  @override
  Component buildBody(Page page, Component child) {
    return div(classes: 'container', [
      header([
        div([]),
        div(classes: 'title', [
          Logo(),
          h1([text('Duet LLC')]),
        ]),
        ThemeToggle(),
      ]),
      main_(classes: 'main', [child]),
    ]);
  }
}
