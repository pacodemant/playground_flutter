import 'package:flutter/material.dart';

class SearchingTextfield extends StatelessWidget {
  const SearchingTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
                //! warum funktioniert "keyboardType" nicht?
                keyboardType: TextInputType.number,
                //!controller: TextEditingController(),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade200,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: 'ff !="asdf" wg Rahmenfarbe u.a.',
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                ),
              );
  }
}