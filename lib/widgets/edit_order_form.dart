import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/utils/database2.dart';
import 'package:uas_mobile/utils/validator.dart';

import 'custom_form_field.dart';

class EditOrderForm extends StatefulWidget {
  final FocusNode brandFocusNode;
  final FocusNode colorFocusNode;
  final FocusNode stokFocusNode;
  final FocusNode priceFocusNode;
  final String currentBrand;
  final String currentColor;
  final String currentStok;
  final String currentprice;
  final String documentId;

  const EditOrderForm({
    this.brandFocusNode,
    this.colorFocusNode,
    this.stokFocusNode,
    this.priceFocusNode,
    this.currentBrand,
    this.currentColor,
    this.currentStok,
    this.currentprice,
    this.documentId,
  });

  @override
  _EditOrderFormState createState() => _EditOrderFormState();
}

class _EditOrderFormState extends State<EditOrderForm> {
  final _editItemFormKey = GlobalKey<FormState>();

  bool _isProcessing = false;

  TextEditingController _brandController;
  TextEditingController _colorController;
  TextEditingController _stokController;
  TextEditingController _priceController;

  @override
  void initState() {
    _brandController = TextEditingController(
      text: widget.currentBrand,
    );

    _colorController = TextEditingController(
      text: widget.currentColor,
    );

    _stokController = TextEditingController(text: widget.currentStok);

    _priceController = TextEditingController(
      text: widget.currentprice,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _editItemFormKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              bottom: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.0),
                Text(
                  'Brand',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: CustomColors.text),
                ),
                SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _brandController,
                  focusNode: widget.brandFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'brand',
                  hint: 'Enter your brand',
                ),
                SizedBox(height: 24.0),
                Text(
                  'Color',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: CustomColors.text),
                ),
                SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _colorController,
                  focusNode: widget.colorFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'color',
                  hint: 'Enter your Color',
                ),
                SizedBox(height: 24.0),
                Text(
                  'Stok',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: CustomColors.text),
                ),
                SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _stokController,
                  focusNode: widget.stokFocusNode,
                  keyboardType: TextInputType.number,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'stok',
                  hint: 'Enter your Stok',
                ),
                Text(
                  'Price',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: CustomColors.text),
                ),
                SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _priceController,
                  focusNode: widget.priceFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'Price',
                  hint: 'Enter your price',
                ),
              ],
            ),
          ),
          _isProcessing
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      CustomColors.firebaseOrange,
                    ),
                  ),
                )
              : Container(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        CustomColors.firebaseGrey,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      widget.brandFocusNode.unfocus();
                      widget.colorFocusNode.unfocus();
                      widget.stokFocusNode.unfocus();
                      widget.priceFocusNode.unfocus();

                      if (_editItemFormKey.currentState.validate()) {
                        setState(() {
                          _isProcessing = true;
                        });

                        await Database2.updateItem(
                            docId: widget.documentId,
                            brand: _brandController.text,
                            color: _colorController.text,
                            stok: _stokController.text,
                            price: _priceController.text);

                        setState(() {
                          _isProcessing = false;
                        });

                        Navigator.of(context).pop();
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: Text(
                        'UPDATE DETAIL',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          color: CustomColors.background,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
