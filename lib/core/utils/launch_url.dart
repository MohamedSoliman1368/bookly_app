import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUr(context, String? url) async {
if (url != null) {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';


  }
}
}