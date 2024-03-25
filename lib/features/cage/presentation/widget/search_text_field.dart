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
        Stack(
          children: [
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Cari',
                hintStyle: TextStyle(
                  color: Color(0xFFBBBBBB),
                  fontSize: 14,
                ),
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
            ),
            const Positioned(
              right: 10,
              top: 8,
              child: Icon(
                Icons.search,
                size: 20,
                color: Color(0xFFBBBBBB),
              ),
            ),
          ],
        )
      ],
    );
  }
}
