import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// class FTextField extends StatefulWidget {
//   FTextField({
//     Key? key,
//     this.helperText,
//     this.labelText,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.backgroundColor = const Color(0xFFFFFFFF),
//     this.borderColor = const Color(0xFFE8E8E8),
//     this.subtitleColor,
//     this.size = FInputSize.size56,
//     this.autoFocus = false,
//     this.controller,
//     this.clearIcon,
//     this.enabled = true,
//     this.readOnly = false,
//     this.focusColor = const Color(0xFF1890FF),
//     this.keyboardType,
//     this.onTap,
//     this.onChanged,
//     this.validator,
//     this.onSave,
//     this.onEditingComplete,
//     this.onFieldSubmitted,
//     this.obscureText = false,
//     this.obscuringCharacter = "*",
//     this.maxLength,
//     this.counterText,
//     this.errorText,
//     this.maxLines,
//     this.inputFormatter,
//     this.borderErrorColor = const Color(0xFFF5222D),
//     this.hintText = '',
//     this.hintStyle,
//     this.style,
//     this.cursorHeight,
//     this.focusNode,
//     this.textCapitalization = TextCapitalization.none,
//     this.labelStyle,
//     this.padding = const EdgeInsets.only(left: 16),
//     this.childSpace = 8,
//     this.textAlign = TextAlign.start,
//     this.helperTextColor,
//     this.textInputAction,
//     this.isImportant = false,
//     this.onClear,
//     this.buildCounter,
//   }) : super(key: key);

//   final TextEditingController? controller;
//   final String? helperText;
//   final String? labelText;
//   final List<Widget>? prefixIcon;
//   final Widget? clearIcon;
//   final Widget? suffixIcon;
//   final Color? backgroundColor;
//   final Color? borderColor;
//   final Color? focusColor;
//   final Color? subtitleColor;
//   final Color? borderErrorColor;
//   final FInputSize? size;
//   final bool? autoFocus;
//   final bool? enabled;
//   final bool? readOnly;
//   final bool? isImportant;
//   final TextInputType? keyboardType;
//   final VoidCallback? onTap;
//   final Function(String?)? onChanged;
//   final Function? onSave;
//   final FormFieldValidator<String>? validator;
//   final VoidCallback? onEditingComplete;
//   final Function(String?)? onFieldSubmitted;
//   final bool? obscureText;
//   final String? obscuringCharacter;
//   final int? maxLength;
//   final String? counterText;
//   final String? errorText;
//   final Color? helperTextColor;
//   final String? hintText;
//   final TextStyle? hintStyle;
//   final TextStyle? style;
//   final TextStyle? labelStyle;
//   final double? cursorHeight;
//   final int? maxLines;
//   final List<TextInputFormatter>? inputFormatter;
//   final FocusNode? focusNode;
//   final TextCapitalization? textCapitalization;
//   final EdgeInsets? padding;
//   final TextAlign? textAlign;
//   final double childSpace;

//   /// build widget hiển thị đếm kí tự
//   final Widget? Function(BuildContext, {int currentLength, bool isFocused, int? maxLength})? buildCounter;
//   final TextInputAction? textInputAction;
//   Function? onClear;

//   @override
//   _FTextFieldState createState() => _FTextFieldState();
// }

// class _FTextFieldState extends State<FTextField> {
//   bool _isFocus = false;
//   bool _isShowClear = false;
//   TextEditingController _controller = TextEditingController();

//   @override
//   void initState() {
//     if (widget.controller != null) {
//       _controller = widget.controller!;
//       _isShowClear = widget.controller!.text.isNotEmpty;
//     }
//     _controller.addListener(clearIconHandle);
//     super.initState();
//   }

//   void clearIconHandle() {
//     if (mounted) {
//       if (_controller.text.isEmpty && _isShowClear) {
//         setState(() {
//           _isShowClear = false;
//         });
//       } else if (_controller.text.isNotEmpty && !_isShowClear) {
//         setState(() {
//           _isShowClear = true;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final builder = widget.buildCounter ?? (_, {int? currentLength, bool? isFocused, int? maxLength}) => null;

//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: widget.padding,
//           height: widget.size?.height,
//           decoration: BoxDecoration(
//             color: widget.backgroundColor,
//             borderRadius: BorderRadius.all(widget.size!.borderRadius),
//             border: Border.all(
//               width: 1,
//               color: widget.helperText != null
//                   ? widget.borderErrorColor!
//                   : _isFocus
//                       ? widget.focusColor!
//                       : widget.borderColor!,
//             ),
//           ),
//           child: Row(
//             children: [
//               _buildPrefixIcon(),
//               Expanded(
//                 child: Focus(
//                   onFocusChange: (value) {
//                     setState(() {
//                       _isFocus = value;
//                     });
//                   },
//                   child: Material(
//                     color: Colors.transparent,
//                     child: TextFormField(
//                       scrollPadding: const EdgeInsets.all(20.0) + const EdgeInsets.fromLTRB(0, 0, 0, 44.0),
//                       textAlign: widget.textAlign!,
//                       textCapitalization: widget.textCapitalization!,
//                       focusNode: widget.focusNode,
//                       inputFormatters: widget.inputFormatter,
//                       textInputAction: widget.textInputAction,
//                       maxLines: widget.maxLines,
//                       maxLength: widget.maxLength,
//                       onChanged: widget.onChanged,
//                       onTap: widget.onTap,
//                       onFieldSubmitted: widget.onFieldSubmitted,
//                       validator: widget.validator,
//                       keyboardType: widget.keyboardType,
//                       controller: widget.controller,
//                       autofocus: widget.autoFocus!,
//                       enabled: widget.enabled,
//                       readOnly: widget.readOnly!,
//                       textAlignVertical: TextAlignVertical.center,
//                       style: widget.style ??
//                           const TextStyle(
//                             fontSize: 14,
//                             color: Color(0xFF000000),
//                           ),
//                       cursorColor: const Color(0xFF000000),
//                       cursorHeight: widget.cursorHeight,
//                       obscureText: widget.obscureText!,
//                       obscuringCharacter: widget.obscuringCharacter!,
//                       cursorWidth: 1,
//                       onEditingComplete: widget.onEditingComplete,
//                       buildCounter: builder,
//                       decoration: InputDecoration(
//                         errorStyle: const TextStyle(
//                           color: Color(0xFF000000),
//                         ),
//                         counterText: widget.counterText,
//                         hintText: widget.hintText,
//                         label: widget.isImportant!
//                             ? Text.rich(
//                                 TextSpan(
//                                   children: <InlineSpan>[
//                                     WidgetSpan(
//                                       child: Text(
//                                         widget.labelText ?? '',
//                                       ),
//                                     ),
//                                     const WidgetSpan(
//                                       child: Text(
//                                         ' *',
//                                         style: TextStyle(
//                                           color: Colors.red,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             : null,
//                         labelText: widget.isImportant == false ? widget.labelText : null,
//                         labelStyle: widget.labelStyle ??
//                             TextStyle(color: _isFocus ? widget.focusColor : const Color(0xff9FB0C7), height: 0.8),
//                         // labelStyle: widget.labelStyle ??
//                         //     TextStyle(
//                         //         color: widget.helperText != null
//                         //             ? widget.borderErrorColor
//                         //             : _isFocus
//                         //                 ? widget.focusColor
//                         //                 : Color(0xff9FB0C7),
//                         //         height: 0.8),
//                         hintStyle: widget.hintStyle,
//                         contentPadding: EdgeInsets.zero,
//                         border: InputBorder.none,
//                         isDense: true,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               widget.readOnly!
//                   ? _buildClear()
//                   : _isFocus
//                       ? _buildClear()
//                       : const SizedBox(),
//               _buildSuffix(),
//             ],
//           ),
//         ),
//         if (widget.helperText != '')
//           if (widget.helperText != null)
//             Container(
//               margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
//               constraints: const BoxConstraints(maxHeight: 32, minHeight: 16),
//               child: Text(
//                 widget.helperText ?? '',
//                 overflow: TextOverflow.ellipsis,
//                 style: const TextStyle(
//                   fontFamily: 'Inter',
//                   fontSize: 12,
//                   height: 4 / 3,
//                   color: Color(0xFFF5222D),
//                   leadingDistribution: TextLeadingDistribution.even,
//                 ),
//                 maxLines: 2,
//               ),
//             ),
//       ],
//     );
//   }

//   Widget _buildPrefixIcon() => widget.prefixIcon?.isNotEmpty ?? false
//       ? Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             for (var item in widget.prefixIcon!) ...[item, const SizedBox(width: 8)]
//           ],
//         )
//       : const SizedBox();

//   Widget _buildClear() {
//     if (_isShowClear) {
//       return CupertinoButton(
//         disabledColor: Colors.transparent,
//         onPressed: () {
//           widget.controller?.clear();
//           if (widget.onClear != null) {
//             widget.onClear!();
//           }
//         },
//         color: Colors.green,
//         padding: EdgeInsets.zero,
//         borderRadius: BorderRadius.zero,
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.transparent,
//             borderRadius: BorderRadius.circular(40 / 2),
//           ),
//           child: const Icon(
//             Icons.cancel,
//             color: Color(0xff6E87AA),
//             size: 16,
//           ),
//         ),
//       );
//     }
//     return Container();
//   }

//   Widget _buildSuffix() => widget.suffixIcon != null
//       ? GestureDetector(
//           onTap: widget.onTap,
//           child: Container(
//             height: 48,
//             alignment: Alignment.center,
//             color: Colors.red,
//             child: widget.suffixIcon,
//           ),
//         )
//       : Container(width: widget.clearIcon != null ? 0 : 8);
// }

class FTextFormField extends StatefulWidget {
  FTextFormField({
    Key? key,
    this.children,
    this.helperText,
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.borderColor = const Color(0xFFE8E8E8),
    this.size = FInputSize.size56,
    this.autoFocus = false,
    this.controller,
    // this.clearIcon,
    this.enabled = true,
    this.readOnly = false,
    this.focusColor = const Color(0xFF1890FF),
    // this.keyboardType,
    this.onTap,
    this.onChanged,
    this.validator,
    this.onSave,
    this.onEditingComplete,
    this.onFieldSubmitted,
    // this.obscureText = false,
    // this.obscuringCharacter = "*",
    // this.maxLength,
    this.counterText,
    this.errorText,
    // this.maxLines,
    // this.inputFormatter,
    this.borderErrorColor = const Color(0xFFF5222D),
    // this.hintText = '',
    // this.hintStyle,
    // this.style,
    // this.cursorHeight,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    // this.labelStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.childSpace = 8,
    this.textAlign = TextAlign.start,
    this.helperTextColor,
    this.textInputAction,
    this.isImportant = false,
    this.onClear,
    this.buildCounter,
  }) : super(key: key);

  final String? helperText;
  final List<Widget>? children;
  final TextEditingController? controller;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? focusColor;
  final Color? borderErrorColor;
  final FInputSize? size;
  final bool? autoFocus;
  final bool? enabled;
  final bool? readOnly;
  final bool? isImportant;
  // final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final Function(String?)? onChanged;
  final Function? onSave;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onEditingComplete;
  final Function(String?)? onFieldSubmitted;
  // final bool? obscureText;
  // final String? obscuringCharacter;
  // final int? maxLength;
  final String? counterText;
  final String? errorText;
  final Color? helperTextColor;
  // final String? hintText;
  // final TextStyle? hintStyle;
  // final TextStyle? style;
  // final TextStyle? labelStyle;
  // final double? cursorHeight;
  // final int? maxLines;
  // final List<TextInputFormatter>? inputFormatter;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;
  final EdgeInsets? padding;
  final TextAlign? textAlign;
  final double childSpace;

  /// build widget hiển thị đếm kí tự
  final Widget? Function(BuildContext, {int currentLength, bool isFocused, int? maxLength})? buildCounter;
  final TextInputAction? textInputAction;
  Function? onClear;

  @override
  _FTextFormFieldState createState() => _FTextFormFieldState();
}

class _FTextFormFieldState extends State<FTextFormField> {
  bool _isFocus = false;
  bool _isShowClear = false;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    if (widget.controller != null) {
      _controller = widget.controller!;
      _isShowClear = widget.controller!.text.isNotEmpty;
    }
    _controller.addListener(clearIconHandle);
    super.initState();
  }

  void clearIconHandle() {
    if (mounted) {
      if (_controller.text.isEmpty && _isShowClear) {
        setState(() {
          _isShowClear = false;
        });
      } else if (_controller.text.isNotEmpty && !_isShowClear) {
        setState(() {
          _isShowClear = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final builder = widget.buildCounter ?? (_, {int? currentLength, bool? isFocused, int? maxLength}) => null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: widget.padding,
          height: widget.size?.height,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.all(widget.size!.borderRadius),
            border: Border.all(
              width: 1,
              color: widget.helperText != null
                  ? widget.borderErrorColor!
                  : _isFocus
                      ? widget.focusColor!
                      : widget.borderColor!,
            ),
          ),
          child: Row(
            children: [
              for (var item in widget.children!) ...[
                item,
                SizedBox(width: widget.childSpace)
// if(item is FTextField)
              ]
              // _buildPrefixIcon(),
              // Expanded(
              //   child: Focus(
              //     onFocusChange: (value) {
              //       setState(() {
              //         _isFocus = value;
              //       });
              //     },
              //     child: Material(
              //       color: Colors.transparent,
              //       child: TextFormField(
              //         scrollPadding: const EdgeInsets.all(20.0) + const EdgeInsets.fromLTRB(0, 0, 0, 44.0),
              //         textAlign: widget.textAlign!,
              //         textCapitalization: widget.textCapitalization!,
              //         focusNode: widget.focusNode,
              //         inputFormatters: widget.inputFormatter,
              //         textInputAction: widget.textInputAction,
              //         maxLines: widget.maxLines,
              //         maxLength: widget.maxLength,
              //         onChanged: widget.onChanged,
              //         onTap: widget.onTap,
              //         onFieldSubmitted: widget.onFieldSubmitted,
              //         validator: widget.validator,
              //         keyboardType: widget.keyboardType,
              //         controller: widget.controller,
              //         autofocus: widget.autoFocus!,
              //         enabled: widget.enabled,
              //         readOnly: widget.readOnly!,
              //         textAlignVertical: TextAlignVertical.center,
              //         style: widget.style ??
              //             const TextStyle(
              //               fontSize: 14,
              //               color: Color(0xFF000000),
              //             ),
              //         cursorColor: const Color(0xFF000000),
              //         cursorHeight: widget.cursorHeight,
              //         obscureText: widget.obscureText!,
              //         obscuringCharacter: widget.obscuringCharacter!,
              //         cursorWidth: 1,
              //         onEditingComplete: widget.onEditingComplete,
              //         buildCounter: builder,
              //         decoration: InputDecoration(
              //           errorStyle: const TextStyle(
              //             color: Color(0xFF000000),
              //           ),
              //           counterText: widget.counterText,
              //           hintText: widget.hintText,
              //           label: widget.isImportant!
              //               ? Text.rich(
              //                   TextSpan(
              //                     children: <InlineSpan>[
              //                       WidgetSpan(
              //                         child: Text(
              //                           widget.labelText ?? '',
              //                         ),
              //                       ),
              //                       const WidgetSpan(
              //                         child: Text(
              //                           ' *',
              //                           style: TextStyle(
              //                             color: Colors.red,
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 )
              //               : null,
              //           labelText: widget.isImportant == false ? widget.labelText : null,
              //           labelStyle: widget.labelStyle ??
              //               TextStyle(color: _isFocus ? widget.focusColor : const Color(0xff9FB0C7), height: 0.8),
              //           // labelStyle: widget.labelStyle ??
              //           //     TextStyle(
              //           //         color: widget.helperText != null
              //           //             ? widget.borderErrorColor
              //           //             : _isFocus
              //           //                 ? widget.focusColor
              //           //                 : Color(0xff9FB0C7),
              //           //         height: 0.8),
              //           hintStyle: widget.hintStyle,
              //           contentPadding: EdgeInsets.zero,
              //           border: InputBorder.none,
              //           isDense: true,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // widget.readOnly!
              //     ? _buildClear()
              //     : _isFocus
              //         ? _buildClear()
              //         : const SizedBox(),
              // _buildSuffix(),
            ],
          ),
        ),
        if (widget.helperText != '')
          if (widget.helperText != null)
            Container(
              margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
              constraints: const BoxConstraints(maxHeight: 32, minHeight: 16),
              child: Text(
                widget.helperText ?? '',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  height: 4 / 3,
                  color: Color(0xFFF5222D),
                  leadingDistribution: TextLeadingDistribution.even,
                ),
                maxLines: 2,
              ),
            ),
      ],
    );
  }

  // Widget _buildPrefixIcon() => widget.prefixIcon?.isNotEmpty ?? false
  //     ? Row(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           for (var item in widget.prefixIcon!) ...[item, const SizedBox(width: 8)]
  //         ],
  //       )
  //     : const SizedBox();

  // Widget _buildClear() {
  //   if (_isShowClear) {
  //     return CupertinoButton(
  //       disabledColor: Colors.transparent,
  //       onPressed: () {
  //         widget.controller?.clear();
  //         if (widget.onClear != null) {
  //           widget.onClear!();
  //         }
  //       },
  //       color: Colors.green,
  //       padding: EdgeInsets.zero,
  //       borderRadius: BorderRadius.zero,
  //       child: Container(
  //         decoration: BoxDecoration(
  //           color: Colors.transparent,
  //           borderRadius: BorderRadius.circular(40 / 2),
  //         ),
  //         child: const Icon(
  //           Icons.cancel,
  //           color: Color(0xff6E87AA),
  //           size: 16,
  //         ),
  //       ),
  //     );
  //   }
  //   return Container();
  // }

  // Widget _buildSuffix() => widget.suffixIcon != null
  //     ? GestureDetector(
  //         onTap: widget.onTap,
  //         child: Container(
  //           height: 48,
  //           alignment: Alignment.center,
  //           color: Colors.red,
  //           child: widget.suffixIcon,
  //         ),
  //       )
  //     : Container(width: widget.clearIcon != null ? 0 : 8);
}

class FInputSize {
  const FInputSize({
    required this.height,
    required this.borderRadius,
    required this.contentPadding,
  });

  final double height;
  final Radius borderRadius;
  final EdgeInsetsGeometry contentPadding;

  static const FInputSize size32 = FInputSize(
    height: 32,
    borderRadius: Radius.circular(8.0),
    contentPadding: EdgeInsets.symmetric(vertical: 4),
  );

  static const FInputSize size40 = FInputSize(
    height: 40,
    borderRadius: Radius.circular(8.0),
    contentPadding: EdgeInsets.symmetric(vertical: 8),
  );

  static const FInputSize size48 = FInputSize(
    height: 48,
    borderRadius: Radius.circular(8.0),
    contentPadding: EdgeInsets.symmetric(vertical: 12),
  );

  static const FInputSize size56 = FInputSize(
    height: 56,
    borderRadius: Radius.circular(8.0),
    contentPadding: EdgeInsets.symmetric(vertical: 10),
  );

  static const FInputSize size64 = FInputSize(
    height: 64,
    borderRadius: Radius.circular(8.0),
    contentPadding: EdgeInsets.symmetric(vertical: 10),
  );

  FInputSize copyWith({
    double? height,
    Radius? borderRadius,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return FInputSize(
      height: height ?? this.height,
      borderRadius: borderRadius ?? this.borderRadius,
      contentPadding: contentPadding ?? this.contentPadding,
    );
  }
}
