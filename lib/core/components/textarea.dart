import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';

class TextArea extends StatefulWidget {
  const TextArea(
      {super.key,
      this.textLabel = "",
      this.minLines = 3,
      this.borderColor = const Color(0xFFCB8927),
      this.controller,
      this.isEditable = true});
  final String textLabel;
  final int minLines;
  final Color borderColor;
  final TextEditingController? controller;
  final bool isEditable;

  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  final FocusNode _focus = FocusNode();
  TextEditingController _controller = TextEditingController();
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    if (widget.controller != null) {
      _controller = widget.controller!;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    isSelected = _focus.hasFocus;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.textLabel != "") ...[
          Text(
            widget.textLabel,
            style: TextStyles.poppinsBold.copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w800,
                color: isSelected ? const Color(0xFFCB8927) : Colors.white),
          ),
          10.verticalSpace,
        ],
        TextField(
          focusNode: _focus,
          controller: _controller,
          readOnly: !widget.isEditable,
          minLines: widget.minLines,
          maxLines: widget.minLines,
          keyboardType: TextInputType.multiline,
          scrollPhysics: const BouncingScrollPhysics(),
          selectionHeightStyle: BoxHeightStyle.max,
          cursorColor: const Color(0xFFCB8927), // Change cursor color
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor, width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor, width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor, width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          style: TextStyles.poppinsBold.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
