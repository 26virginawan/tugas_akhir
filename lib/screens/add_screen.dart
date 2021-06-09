import 'package:flutter/material.dart';
import 'package:uas_mobile/res/custom_colors.dart';
import 'package:uas_mobile/widgets/add_item_form.dart';
import 'package:uas_mobile/widgets/app_bar_title.dart';

class AddScreen extends StatelessWidget {
  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _titleFocusNode.unfocus();
        _descriptionFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: CustomColors.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.background,
          title: AppBarTitle(),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 20.0,
              ),
              child: AddItemForm(
                titleFocusNode: _titleFocusNode,
                descriptionFocusNode: _descriptionFocusNode,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
