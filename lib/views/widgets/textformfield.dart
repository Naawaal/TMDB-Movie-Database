import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class TextFormFiledWidget extends StatelessWidget {
  const TextFormFiledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff43475A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: const InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 20,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    ).marginAll(10);
  }
}
