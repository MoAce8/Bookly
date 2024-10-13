import 'dart:async';

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  TextEditingController searchCont = TextEditingController();
  Timer? sendTimer;

  @override
  void dispose() {
    searchCont.dispose();
    sendTimer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    SearchCubit.get(context).fetchSearchedBooks(bookName: 'subject:fantasy');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: searchCont,
            onChanged: searchChanged,
            decoration: InputDecoration(
              hintText: 'What are you looking for?',
              hintStyle: Styles.text14,
              isDense: true,
              prefixIcon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white.withOpacity(.6),
              ),
              border: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Cancel',
            style: Styles.text16,
          ),
        ),
      ],
    );
  }

  void searchChanged(value) {
    if (sendTimer?.isActive ?? false) sendTimer!.cancel();
    sendTimer = Timer(const Duration(milliseconds: 500), () {
      String text =
          searchCont.text.isEmpty ? 'subject:fantasy' : searchCont.text;
      SearchCubit.get(context).fetchSearchedBooks(bookName: text);
    });
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Colors.white.withOpacity(.7),
      ),
    );
  }
}
