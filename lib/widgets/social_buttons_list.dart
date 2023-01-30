import 'package:flutter/material.dart';
import 'package:portfolio/widgets/social_buttons_items.dart';

import 'package:url_launcher/url_launcher.dart';

class SocialButtonsList extends StatelessWidget {
  const SocialButtonsList({Key? key}) : super(key: key);

  void launchURL(String url) async => await launchUrl(
        Uri.parse('$url'),
        webOnlyWindowName: '_blank',
      );

  void _lunchEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'rahulkushwaha482@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'About my query',
      }),
    );
    launchUrl(emailLaunchUri);
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButtonsItems(
          title: 'GitHub',
          image: 'github.png',
          onTap: () => launchURL('https://github.com/rahulkushwaha482'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'LinkedIn',
          image: 'linkedin.png',
          onTap: () => launchURL('https://in.linkedin.com/in/rahulkushwaha482'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Stack OverFlow',
          image: 'stackoverflow.png',
          onTap: () => launchURL(
              'https://stackoverflow.com/users/8546205/rahul-kushwaha'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Pub.dev',
          image: 'flutter.png',
          onTap: () => launchURL('https://pub.dev/packages?q=rahulkushwaha482'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Email',
          image: 'email.png',
          onTap: () => _lunchEmail(),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Resume',
          image: 'download.png',
          onTap: () => launchURL('https://docs.google.com/document/d/1q1TarR46iVljr0UqAHoqzsRC24j6qEUrh1Fx183j25w/edit?usp=sharing'),
        ),
        const SizedBox(height: 14),

        SocialButtonsItems(
          title: 'Facebook',
          image: 'facebook.png',
          onTap: () => launchURL('https://www.facebook.com/rahulkushwaha482'),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
