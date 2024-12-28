import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ColorExtractionExample extends StatefulWidget {
  final String imageUrl;

  const ColorExtractionExample({super.key, required this.imageUrl});

  @override
  // ignore: library_private_types_in_public_api
  _ColorExtractionExampleState createState() => _ColorExtractionExampleState();
}

class _ColorExtractionExampleState extends State<ColorExtractionExample> {
  HSLColor? baseColor;

  @override
  void initState() {
    super.initState();
    _getDominantColor();
  }

  Future<void> _getDominantColor() async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      NetworkImage(widget.imageUrl),
    );

    setState(() {
      baseColor = HSLColor.fromColor(
          paletteGenerator.dominantColor?.color ?? Colors.white);
    });
  }

  @override
  Widget build(BuildContext context) {
    final textColor = baseColor?.withLightness(.2).toColor() ?? Colors.black;
    final ajustedColor = baseColor?.withLightness(.9).toColor() ?? Colors.white;
    return Scaffold(
      appBar: AppBar(title: const Text('Cor Principal da Imagem')),
      body: Column(
        children: [
          Text(
            ajustedColor.toString(),
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 100,
            color: ajustedColor, // Mostra a cor extraída
            child: Center(
              child: Text(
                'Cor Principal',
                style: TextStyle(
                  color: textColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Image.network(
            widget.imageUrl,
            height: 200,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ColorExtractionExample(
      imageUrl:
          'https://www.thecocktaildb.com/images/media/drink/dif7a31614006331.jpg',
    ),
  ));
}
