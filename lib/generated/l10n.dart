// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Quotion AI`
  String get appName {
    return Intl.message(
      'Quotion AI',
      name: 'appName',
      desc: 'App name in english',
      args: [],
    );
  }

  /// `About Me`
  String get aboutme {
    return Intl.message(
      'About Me',
      name: 'aboutme',
      desc: '',
      args: [],
    );
  }

  /// `Service/Business Type:`
  String get servicebusiness_type {
    return Intl.message(
      'Service/Business Type:',
      name: 'servicebusiness_type',
      desc: '',
      args: [],
    );
  }

  /// `Business Location:`
  String get business_location {
    return Intl.message(
      'Business Location:',
      name: 'business_location',
      desc: '',
      args: [],
    );
  }

  /// `Years of Experience:`
  String get years_of_experience {
    return Intl.message(
      'Years of Experience:',
      name: 'years_of_experience',
      desc: '',
      args: [],
    );
  }

  /// `*Won’t Be Shown To Anyone, but Us*`
  String get wont_be_shown {
    return Intl.message(
      '*Won’t Be Shown To Anyone, but Us*',
      name: 'wont_be_shown',
      desc: '',
      args: [],
    );
  }

  /// `Quotion Response`
  String get quotion_response {
    return Intl.message(
      'Quotion Response',
      name: 'quotion_response',
      desc: '',
      args: [],
    );
  }

  /// `The Business Quote`
  String get business_quote {
    return Intl.message(
      'The Business Quote',
      name: 'business_quote',
      desc: '',
      args: [],
    );
  }

  /// `Given Price:`
  String get given_price {
    return Intl.message(
      'Given Price:',
      name: 'given_price',
      desc: '',
      args: [],
    );
  }

  /// `Prospect’s Budget:`
  String get prospect_budget {
    return Intl.message(
      'Prospect’s Budget:',
      name: 'prospect_budget',
      desc: '',
      args: [],
    );
  }

  /// `Production Cost:`
  String get production_cost {
    return Intl.message(
      'Production Cost:',
      name: 'production_cost',
      desc: '',
      args: [],
    );
  }

  /// `Production Quality:`
  String get production_quality {
    return Intl.message(
      'Production Quality:',
      name: 'production_quality',
      desc: '',
      args: [],
    );
  }

  /// `Features:`
  String get feature {
    return Intl.message(
      'Features:',
      name: 'feature',
      desc: '',
      args: [],
    );
  }

  /// `Desired Outcome:`
  String get desired_outcome {
    return Intl.message(
      'Desired Outcome:',
      name: 'desired_outcome',
      desc: '',
      args: [],
    );
  }

  /// `Prospect’s Perceived Value:`
  String get prospect_perceived_value {
    return Intl.message(
      'Prospect’s Perceived Value:',
      name: 'prospect_perceived_value',
      desc: '',
      args: [],
    );
  }

  /// `Your Perceived Value:`
  String get your_perceived_value {
    return Intl.message(
      'Your Perceived Value:',
      name: 'your_perceived_value',
      desc: '',
      args: [],
    );
  }

  /// `Willingness To Pay:`
  String get willingness_pay {
    return Intl.message(
      'Willingness To Pay:',
      name: 'willingness_pay',
      desc: '',
      args: [],
    );
  }

  /// `Your Competition:`
  String get your_competition {
    return Intl.message(
      'Your Competition:',
      name: 'your_competition',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
