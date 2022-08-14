import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
    // así se reciben en el constructor, por ejemplo
    required this.baseColor,
    required this.baseColor1,
    required this.baseColor2,
    required this.baseColor3,
    required this.callback,
  }) : super(key: key);

  // atributos de la clase, por ejemplo
  final int baseColor;
  final int baseColor1;
  final int baseColor2;
  final int baseColor3;

  // también se puede tener como un atributo un callback, necesario ya que es un
  // widget sin estado, por ejemplo
  final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // vamos a mostrar los elementos en un row
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Expanded(
            flex: 4,
            child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Color(baseColor),
                      content: Text('Color Palette - Valor Copiado')));
                },
                child: Ink(height: 100, width: 500, color: Color(baseColor))),
          ),

          Expanded(
              flex: 3,
              child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Color(baseColor1),
                        content: Text('Color Palette - Valor Copiado')));
                  },
                  child:
                      Ink(height: 100, width: 500, color: Color(baseColor1)))),
          Expanded(
              flex: 2,
              child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Color(baseColor2),
                        content: Text('Color Palette - Valor Copiado')));
                  },
                  child:
                      Ink(height: 100, width: 500, color: Color(baseColor2)))),
          Expanded(
              flex: 1,
              child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Color(baseColor3),
                        content: Text('Color Palette - Valor Copiado')));
                  },
                  child:
                      Ink(height: 100, width: 500, color: Color(baseColor3)))),
          //Container(color: Color(baseColor), width: 50, height: 50),
        ]));
  }
}
