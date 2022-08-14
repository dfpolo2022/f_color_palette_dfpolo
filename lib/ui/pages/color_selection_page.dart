import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: (Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ColorPalette(
                    baseColor: 0xFF293462,
                    baseColor1: 0xFF1CD6CE,
                    baseColor2: 0xFFFEDB39,
                    baseColor3: 0xFFD61C4E,
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 0xFF554994,
                    baseColor1: 0xFFF675A8,
                    baseColor2: 0xFFF29393,
                    baseColor3: 0xFFFFCCB3,
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 0xFFAC4425,
                    baseColor1: 0xFF224B0C,
                    baseColor2: 0xFFC1D5A4,
                    baseColor3: 0xFFF0F2B6,
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 0xFFC21010,
                    baseColor1: 0xFFE64848,
                    baseColor2: 0xFFFFFDE3,
                    baseColor3: 0xFFCFE8A9,
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 0xFF100720,
                    baseColor1: 0xFF31087B,
                    baseColor2: 0xFFFA2FB5,
                    baseColor3: 0xFFFFC23C,
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 0xFFEAE509,
                    baseColor1: 0xFF7DCE13,
                    baseColor2: 0xFF5BB318,
                    baseColor3: 0xFF2B7A0B,
                    callback: (String) {},
                  ),
                ]),
          ),
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
