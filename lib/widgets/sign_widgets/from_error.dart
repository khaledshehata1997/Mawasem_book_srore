import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  FormError({
    @required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'icons/Error.svg',
          height: 14,
          width: 14,
        ),
        SizedBox(
          width: 10,
        ),
        Text(error),
      ],
    );
  }
}
