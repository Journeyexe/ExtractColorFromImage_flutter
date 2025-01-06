# Color Extraction Example

This Flutter application demonstrates how to extract the dominant color from an image using the `palette_generator` package. The app displays the extracted color and applies it to the background of a widget.

## Features
- Extracts the dominant color from an image provided via a URL.
- Displays the extracted color in a `Container` widget.
- Dynamically updates the text color to ensure readability against the background color.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.dev/Journeyexe/ExtractColorFromImage_flutter
   cd ExtractColorFromImage_flutter
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```

## Usage

1. Replace the `imageUrl` parameter in the `ColorExtractionExample` widget with the URL of the image you want to analyze:
   ```dart
   const MaterialApp(
     home: ColorExtractionExample(
       imageUrl: '<your-image-url>',
     ),
   )
   ```

2. Run the app, and it will display the dominant color extracted from the image.

## Code Overview

### `ColorExtractionExample` Widget
This is a `StatefulWidget` that takes an image URL as input and extracts its dominant color using the `palette_generator` package.

#### `initState`
Initializes the widget and starts the color extraction process by calling `_getDominantColor()`.

#### `_getDominantColor()`
Uses the `PaletteGenerator` to extract the dominant color from the image provided via a URL.

#### `build`
Builds the UI, displaying the dominant color and the image. The text color is dynamically adjusted to contrast with the background color.

## Dependencies
- `flutter`: The Flutter SDK
- `palette_generator`: A Flutter package used to extract prominent colors from images.

Add `palette_generator` to your `pubspec.yaml` file:
```yaml
dependencies:
  flutter:
    sdk: flutter
  palette_generator: ^0.3.0
```

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

Enjoy building and learning with Flutter!

