// import 'package:flutter/material.dart';
class OnboardingModel {
  String imag;
  String text;

  OnboardingModel({
    required this.imag,
    required this.text
});
}

List<OnboardingModel> screen = <OnboardingModel>[
  OnboardingModel(imag: 'images/learn.png', text: 'اعثر على شخصيتك المفضله ...'),
  OnboardingModel(imag: 'images/readingbook.png', text: 'text'),
  OnboardingModel(imag: 'images/manthumbs.png', text: 'text'),
];