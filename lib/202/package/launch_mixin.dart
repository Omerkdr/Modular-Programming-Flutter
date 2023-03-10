import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  void name(params);

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
