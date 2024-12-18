import 'package:flutter/material.dart';
import 'package:pokedex/utils/theme.dart';

class CForm extends StatelessWidget {
  const CForm({
    super.key,
    this.controller,
    this.onChange,
    this.initialValue,
    this.contentPadding,
    this.suffixIcon,
    required this.label,
  });
  final String label;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String)? onChange;
  final String? initialValue;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    cursorColor: Themes.blackC,
        controller: controller,
        onTapOutside: (e) => FocusManager.instance.primaryFocus?.unfocus(),
        onChanged: onChange,
        initialValue: initialValue,
        decoration: InputDecoration(
          filled: true,
          fillColor: Themes.blackC.withAlpha(30),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: suffixIcon,
          labelText: label,
          labelStyle:
              TextStyle(fontSize: 14, color: Themes.blackC.withAlpha(90)),
          contentPadding: contentPadding,
        ));
  }
}
