import 'package:apidash/screens/home_page/editor_pane/environment_auto_suggestion_widget.dart';
import 'package:flutter/material.dart';
import 'package:apidash/consts.dart';

class URLField extends StatelessWidget {
  const URLField({
    super.key,
    required this.selectedId,
    this.initialValue,
    this.onChanged,
    this.focusNode,
    this.controller,
  });

  final String selectedId;
  final String? initialValue;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key("url-$selectedId"),
      initialValue: initialValue,
      style: kCodeStyle,
      decoration: InputDecoration(
        hintText: kHintTextUrlCard,
        hintStyle: kCodeStyle.copyWith(
          color: Theme.of(context).colorScheme.outline.withOpacity(
                kHintOpacity,
              ),
        ),
        border: InputBorder.none,
      ),
      onChanged: onChanged,
      focusNode: focusNode,
      controller: controller,
    );
  }
}

class CellField extends StatelessWidget {
  const CellField({
    super.key,
    required this.keyId,
    this.initialValue,
    this.hintText,
    this.onChanged,
    this.colorScheme,
  });

  final String keyId;
  final String? initialValue;
  final String? hintText;
  final void Function(String)? onChanged;
  final ColorScheme? colorScheme;

  @override
  Widget build(BuildContext context) {
    var clrScheme = colorScheme ?? Theme.of(context).colorScheme;
    return EnvironmentAutoSuggestionWidget(
      onEnvironmentVariableTap: onChanged,
      builder: (context, textEditingController, focusNode) {
        return TextFormField(
          key: Key(keyId),
          style: kCodeStyle.copyWith(
            color: clrScheme.onSurface,
          ),
          decoration: InputDecoration(
            hintStyle: kCodeStyle.copyWith(
              color: clrScheme.outline.withOpacity(
                kHintOpacity,
              ),
            ),
            hintText: hintText,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: clrScheme.primary.withOpacity(
                  kHintOpacity,
                ),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: clrScheme.surfaceVariant,
              ),
            ),
          ),
          onChanged: onChanged,
        );
      },
      initialValue: initialValue ?? "",
    );
  }
}

class JsonSearchField extends StatelessWidget {
  const JsonSearchField({super.key, this.onChanged, this.controller});

  final void Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: kCodeStyle,
      cursorHeight: 18,
      decoration: const InputDecoration(
        isDense: true,
        border: InputBorder.none,
        hintText: 'Search..',
      ),
    );
  }
}

class EnvironmentEditField extends StatelessWidget {
  const EnvironmentEditField({
    super.key,
    required this.keyId,
    this.initialValue,
    this.hintText,
    this.onChanged,
    this.colorScheme,
  });

  final String keyId;
  final String? initialValue;
  final String? hintText;
  final void Function(String)? onChanged;
  final ColorScheme? colorScheme;

  @override
  Widget build(BuildContext context) {
    var clrScheme = colorScheme ?? Theme.of(context).colorScheme;
    return TextFormField(
      key: Key(keyId),
      initialValue: initialValue,
      style: kCodeStyle.copyWith(
        color: clrScheme.onSurface,
      ),
      decoration: InputDecoration(
        hintStyle: kCodeStyle.copyWith(
          color: clrScheme.outline.withOpacity(
            kHintOpacity,
          ),
        ),
        hintText: hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: clrScheme.primary.withOpacity(
              kHintOpacity,
            ),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: clrScheme.surfaceVariant,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
