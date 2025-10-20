// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:duet_llc_website/components/logo.dart' as prefix0;
import 'package:duet_llc_website/layouts/base.dart' as prefix1;
import 'package:duet_llc_website/layouts/shared.dart' as prefix2;
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/components/theme_toggle.dart' as prefix3;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix3.ThemeToggle: ClientTarget<prefix3.ThemeToggle>(
      'jaspr_content:components/theme_toggle',
    ),
  },
  styles: () => [
    ...prefix0.Logo.styles,
    ...prefix1.BaseLayout.styles,
    ...prefix2.SharedLayout.styles,

    ...prefix3.ThemeToggleState.styles,
  ],
);
