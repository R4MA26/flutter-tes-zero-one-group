import 'package:flutter/material.dart';

class InputDaftar extends StatelessWidget {
  // final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hint;
  final String label;

  const InputDaftar({
    Key? key,
    required this.hint,
    required this.label,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(224, 224, 224, 1),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(224, 224, 224, 1),
          ),
          child: TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
