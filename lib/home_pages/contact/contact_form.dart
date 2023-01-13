import 'package:erg_web/shared/contact_model.dart';
import 'package:erg_web/shared/repository.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/textbtn_color.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _suggestionController;
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _suggestionController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _suggestionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _CustomContactForm(
          hintTxt: 'Name',
          controller: _nameController,
          onChanged: (String val) {
            final isActive =
                val.isNotEmpty && _suggestionController.text.isNotEmpty;
            if (isActive != _isActive) {
              setState(() {
                _isActive = isActive;
              });
            }
          },
        ),
        const SizedBox(
          height: 10,
        ),
        _CustomContactForm(
          hintTxt: 'Suggestion',
          controller: _suggestionController,
          maxline: 4,
          onChanged: (String val2) {
            final isActive = val2.isNotEmpty && _nameController.text.isNotEmpty;
            if (isActive != _isActive) {
              setState(() {
                _isActive = isActive;
              });
            }
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextButton(
          onPressed: _isActive ? _sendMail : null,
          text: 'Submit',
        ),
      ],
    );
  }

  Future _sendMail() async {
    final model = SuggestionModel(
      name: _nameController.text,
      suggestion: _suggestionController.text,
    );
    final result = await Repo().sendMail(model);
    if (mounted) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            result ? 'Your Suggestion has sent' : 'Error Occured.',
          ),
        ),
      );
    }
    _nameController.clear();
    _suggestionController.clear();
    setState(() {
      _isActive = false;
    });
  }
}

class _CustomContactForm extends StatelessWidget {
  final int? maxline;
  final String hintTxt;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const _CustomContactForm({
    Key? key,
    required this.hintTxt,
    this.controller,
    this.onChanged,
    this.maxline = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPhone =
        MediaQuery.of(context).size.width <= ScreenSize.phone.maxWidth;
    return Flexible(
      child: FractionallySizedBox(
        widthFactor: isPhone ? 0.7 : 0.4,
        child: TextFormField(
          controller: controller,
          maxLines: maxline,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintTxt,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.grey,
            filled: true,
            labelStyle: AppTextStyle.descriptionTextStyle(
              context,
            ),
          ),
        ),
      ),
    );
  }
}
