import 'package:flutter/material.dart';
import 'package:instgram_clone/core/theme/app_colors.dart';

class FormContainerWidget extends StatefulWidget {
  const FormContainerWidget(
      {super.key,
      this.controller,
      this.fieldKey,
      this.isPasswordField,
      required this.hintText,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.inputType});

  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obscuredText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(.35),
        borderRadius: BorderRadius.circular(3),
      ),
      child: TextFormField(
        style: const TextStyle(color: AppColors.primaryColor),
        controller: widget.controller,
        keyboardType: widget.inputType,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _obscuredText : false,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: AppColors.secondaryColor),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscuredText = !_obscuredText;
              });
            },
            child: widget.isPasswordField == true
                ? Icon(
                    _obscuredText ? Icons.visibility_off : Icons.visibility,
                    color: _obscuredText == false
                        ? AppColors.blueColor
                        : AppColors.secondaryColor,
                  )
                :const Text(''),
          ),
        ),
      ),
    );
  }
}
