import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/jaspr_content.dart';

class BaseLayout extends PageLayoutBase {
  const BaseLayout();

  @override
  Pattern get name => 'base';

  @override
  Component buildBody(Page page, Component child) {
    return main_([
      child,
    ]);
  }
}
