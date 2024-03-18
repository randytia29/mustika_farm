import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required TextEditingController controller,
    required String title,
    String? Function(String?)? validator,
    TextInputAction? textInputAction,
  })  : _controller = controller,
        _title = title,
        _textInputAction = textInputAction,
        _validator = validator;

  final TextEditingController _controller;
  final String _title;
  final String? Function(String?)? _validator;
  final TextInputAction? _textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _controller,
          textInputAction: _textInputAction,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: _title,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBCBCBC)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          validator: _validator,
        )
      ],
    );
  }
}
