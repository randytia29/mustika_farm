import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _controller,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Cari',
            hintStyle: TextStyle(
              color: Color(0xFFBBBBBB),
              fontSize: 14,
            ),
            suffixIcon: Icon(
              Icons.search,
              size: 20,
            ),
            suffixIconColor: Color(0xFFBBBBBB),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBBBBBB)),
              borderRadius: BorderRadius.all(Radius.circular(96)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBBBBBB)),
              borderRadius: BorderRadius.all(Radius.circular(96)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBBBBBB)),
              borderRadius: BorderRadius.all(Radius.circular(96)),
            ),
          ),
        )
      ],
    );
  }
}
