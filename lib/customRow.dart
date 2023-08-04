import 'package:flutter/material.dart';

import 'CustomText.dart';

class CustomRow extends StatefulWidget {
  final String heading1;
  final String value1;
  final String heading2;
  final String value2;
  const CustomRow(
      {Key? key,
      required this.heading1,
      required this.value1,
      required this.heading2,
      required this.value2})
      : super(key: key);

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                  text: widget.heading1,
                  fontSize: 12,
                  fontweight: FontWeight.w600,
                  textcolor: Colors.black),
              SizedBox(
                height: 5,
              ),
              customText(
                  text: widget.value1,
                  fontSize: 15,
                  fontweight: FontWeight.w700,
                  textcolor: Colors.black),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                  text: widget.heading2,
                  fontSize: 12,
                  fontweight: FontWeight.w600,
                  textcolor: Colors.black),
              SizedBox(
                height: 5,
              ),
              customText(
                  text: widget.value2,
                  fontSize: 15,
                  fontweight: FontWeight.w700,
                  textcolor: Colors.black),
            ],
          ),
        ),
      ],
    );
  }
}
