import 'package:duet_llc_website/layouts/shared.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/jaspr_content.dart';

class BaseLayout extends SharedLayout {
  const BaseLayout();

  @override
  Pattern get name => 'base';

  @css
  static List<NestedStyleRule> get styles => [css('.base').styles(textAlign: TextAlign.center)];

  @override
  Component buildBody(Page page, Component child) {
    return super.buildBody(page, div(classes: 'base', [child]));
  }
}
