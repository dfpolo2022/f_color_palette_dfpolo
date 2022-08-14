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
                    baseColor: '293462',
                    baseColor1: '1CD6CE',
                    baseColor2: 'FEDB39',
                    baseColor3: 'D61C4E',
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: '554994',
                    baseColor1: 'F675A8',
                    baseColor2: 'F29393',
                    baseColor3: 'FFCCB3',
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 'AC4425',
                    baseColor1: '224B0C',
                    baseColor2: 'C1D5A4',
                    baseColor3: 'F0F2B6',
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 'C21010',
                    baseColor1: 'E64848',
                    baseColor2: 'FFFDE3',
                    baseColor3: 'CFE8A9',
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: '100720',
                    baseColor1: '31087B',
                    baseColor2: 'FA2FB5',
                    baseColor3: 'FFC23C',
                    callback: (String) {},
                  ),
                  ColorPalette(
                    baseColor: 'EAE509',
                    baseColor1: '7DCE13',
                    baseColor2: '5BB318',
                    baseColor3: '2B7A0B',
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
