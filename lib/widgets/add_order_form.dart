import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/utils/database2.dart';
import 'package:uas_mobile/utils/validator.dart';

import 'custom_form_field.dart';

// import 'custom_form_field.dart';

class AddOrderForm extends StatefulWidget {
  final FocusNode brandFocusNode;
  final FocusNode colorFocusNode;
  final FocusNode stokFocusNode;
  final FocusNode priceFocusNode;

  const AddOrderForm({
    this.brandFocusNode,
    this.colorFocusNode,
    this.stokFocusNode,
    this.priceFocusNode,
  });

  @override
  _AddOrderFormState createState() => _AddOrderFormState();
}

class _AddOrderFormState extends State<AddOrderForm> {
  final _addItemFormKey = GlobalKey<FormState>();

  bool _isProcessing = false;

  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _stokController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _addItemFormKey,
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
                  'color',
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
                  hint: 'Enter your color',
                ),
                SizedBox(height: 24.0),
                Text(
                  'stok',
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
                  hint: 'Enter your stok',
                ),
                SizedBox(height: 24.0),
                Text(
                  'price',
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
                  keyboardType: TextInputType.number,
                  inputAction: TextInputAction.done,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'price',
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

                      if (_addItemFormKey.currentState.validate()) {
                        setState(() {
                          _isProcessing = true;
                        });

                        await Database2.addItem(
                          brand: _brandController.text,
                          color: _colorController.text,
                          stok: _stokController.text,
                          price: _priceController.text,
                        );

                        setState(() {
                          _isProcessing = false;
                        });

                        Navigator.of(context).pop();
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: Text(
                        'ADD DETAIL',
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
