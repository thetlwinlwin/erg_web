import 'package:erg_web/home_pages/contact/contact_form.dart';
import 'package:erg_web/home_pages/contact/footer.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class ContactPageView extends StatelessWidget {
  const ContactPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints constraints) {
        if (constraints.maxWidth <= ScreenSize.phone.maxWidth) {
          return const MobileContactPage();
        } else {
          return const DesktopContactPage();
        }
      },
    );
  }
}

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: ContactForm(),
          ),
        ),
        Footer(textSize: 18),
      ],
    );
  }
}

class DesktopContactPage extends StatelessWidget {
  const DesktopContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Align(
          alignment: Alignment.center,
          child: ContactForm(),
        ),
        Footer(textSize: 22),
      ],
    );
  }
}
