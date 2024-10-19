import 'package:flutter/widgets.dart';

class SizeUtil {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  static late double pixelRatio;

  // Breakpoints
  static late bool isSmallScreen;
  static late bool isMediumScreen;
  static late bool isLargeScreen;

  // Orientation
  static late bool isPortrait;

  // Safe Areas
  static late double safeAreaHorizontal;
  static late double safeAreaVertical;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    pixelRatio = mediaQuery.devicePixelRatio;

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    // Safe areas (notch, status bar, bottom navigation bar)
    safeAreaHorizontal = mediaQuery.padding.left + mediaQuery.padding.right;
    safeAreaVertical = mediaQuery.padding.top + mediaQuery.padding.bottom;

    // Check orientation
    isPortrait = mediaQuery.orientation == Orientation.portrait;

    // Define breakpoints
    isSmallScreen = screenWidth < 600;
    isMediumScreen = screenWidth >= 600 && screenWidth < 1200;
    isLargeScreen = screenWidth >= 1200;
  }

  static double widthPercentage(double percentage) {
    return blockSizeHorizontal * percentage;
  }

  static double heightPercentage(double percentage) {
    return blockSizeVertical * percentage;
  }

  // Fluid typography that adapts to both screen width and height
  static double fluidTextSize(double size) {
    return (blockSizeHorizontal + blockSizeVertical) / 2 * size;
  }

  static double iconSize(double size) {
    return blockSizeHorizontal * size;
  }

  static double spacing(double size) {
    return blockSizeHorizontal * size;
  }

  // Safe area adjusted width
  static double safeWidthPercentage(double percentage) {
    return (screenWidth - safeAreaHorizontal) * (percentage / 100);
  }

  // Safe area adjusted height
  static double safeHeightPercentage(double percentage) {
    return (screenHeight - safeAreaVertical) * (percentage / 100);
  }

  // Scale size based on screen density
  static double scaleSize(double size, BuildContext context) {
    double scaleFactor = MediaQuery.of(context).textScaler as double;
    return size * scaleFactor;
  }
}
