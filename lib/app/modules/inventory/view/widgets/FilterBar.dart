import 'package:flutter/material.dart';
import 'package:local_store/app/common/slangTexts//translations.g.dart';

import '../FilterOptionsBottomSheet.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFF032030),
      toolbarHeight: 80,
      floating: true,
      elevation: 50,
      title: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
                bottom: 12.0,
                left: 8.0,
                right: 8.0,
              ),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        isDense: true,
                        hintText: texts.Inventory.filterBarTextFieldTitle,
                        prefixIcon: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.search_outlined),
                        ),
                        prefixIconConstraints:
                        const BoxConstraints(maxHeight: 24, maxWidth: 48),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return const FilterOptionsBottomSheet();
                            }
                        );
                      },
                      icon: const Icon(Icons.tune_rounded,
                          color: Colors.white)),
                ],
              ))
        ],
      ),
    );
  }

}