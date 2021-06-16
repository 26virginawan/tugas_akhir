import 'package:flutter/material.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/widgets/add_order_form.dart';
import 'package:uas_mobile/widgets/app_bar_title.dart';

class AddScreen2 extends StatelessWidget {
  final FocusNode _brandFocusNode = FocusNode();
  final FocusNode _colorFocusNode = FocusNode();
  final FocusNode _stokFocusNode = FocusNode();
  final FocusNode _priceFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _brandFocusNode.unfocus();
        _colorFocusNode.unfocus();
        _stokFocusNode.unfocus();
        _priceFocusNode.unfocus();
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
              child: AddOrderForm(
                brandFocusNode: _brandFocusNode,
                colorFocusNode: _colorFocusNode,
                stokFocusNode: _stokFocusNode,
                priceFocusNode: _priceFocusNode,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
