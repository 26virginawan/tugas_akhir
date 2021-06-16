import 'package:flutter/material.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/utils/database.dart';
import 'package:uas_mobile/widgets/app_bar_title.dart';
import 'package:uas_mobile/widgets/edit_order_form.dart';

class EditScreen2 extends StatefulWidget {
  final String currentBrand;
  final String currentColor;
  final String currentStok;
  final String documentId;
  final String currentPrice;

  EditScreen2({
    this.currentBrand,
    this.currentColor,
    this.currentStok,
    this.currentPrice,
    this.documentId,
  });

  @override
  _EditScreen2State createState() => _EditScreen2State();
}

class _EditScreen2State extends State<EditScreen2> {
  final FocusNode _brandFocusNode = FocusNode();

  final FocusNode _colorFocusNode = FocusNode();

  final FocusNode _stokFocusNode = FocusNode();

  final FocusNode _priceFocusNode = FocusNode();

  bool _isDeleting = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _brandFocusNode.unfocus();
        _colorFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: CustomColors.firebaseNavy,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.firebaseNavy,
          title: AppBarTitle(),
          actions: [
            _isDeleting
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      right: 16.0,
                    ),
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.redAccent,
                      ),
                      strokeWidth: 3,
                    ),
                  )
                : IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                      size: 32,
                    ),
                    onPressed: () async {
                      setState(() {
                        _isDeleting = true;
                      });

                      await Database.deleteItem(
                        docId: widget.documentId,
                      );

                      setState(() {
                        _isDeleting = false;
                      });

                      Navigator.of(context).pop();
                    },
                  ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 20.0,
              ),
              child: EditOrderForm(
                documentId: widget.documentId,
                brandFocusNode: _brandFocusNode,
                colorFocusNode: _colorFocusNode,
                stokFocusNode: _stokFocusNode,
                priceFocusNode: _priceFocusNode,
                currentBrand: widget.currentBrand,
                currentColor: widget.currentColor,
                currentStok: widget.currentStok,
                currentprice: widget.currentPrice,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
