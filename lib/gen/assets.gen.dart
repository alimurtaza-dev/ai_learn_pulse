/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/in_progress.json
  String get inProgress => 'assets/animations/in_progress.json';

  /// File path: assets/animations/no_data.json
  String get noData => 'assets/animations/no_data.json';

  /// File path: assets/animations/register_success.json
  String get registerSuccess => 'assets/animations/register_success.json';

  /// List of all assets
  List<String> get values => [inProgress, noData, registerSuccess];
}

class $AssetsAppIconsGen {
  const $AssetsAppIconsGen();

  /// File path: assets/app_icons/assessment.svg
  SvgGenImage get assessment =>
      const SvgGenImage('assets/app_icons/assessment.svg');

  /// File path: assets/app_icons/email.svg
  SvgGenImage get email => const SvgGenImage('assets/app_icons/email.svg');

  /// File path: assets/app_icons/examination.svg
  SvgGenImage get examination =>
      const SvgGenImage('assets/app_icons/examination.svg');

  /// File path: assets/app_icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/app_icons/home.svg');

  /// File path: assets/app_icons/password.svg
  SvgGenImage get password =>
      const SvgGenImage('assets/app_icons/password.svg');

  /// File path: assets/app_icons/place_holder.svg
  SvgGenImage get placeHolder =>
      const SvgGenImage('assets/app_icons/place_holder.svg');

  /// File path: assets/app_icons/settings.svg
  SvgGenImage get settings =>
      const SvgGenImage('assets/app_icons/settings.svg');

  /// File path: assets/app_icons/timeTable.svg
  SvgGenImage get timeTable =>
      const SvgGenImage('assets/app_icons/timeTable.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        assessment,
        email,
        examination,
        home,
        password,
        placeHolder,
        settings,
        timeTable
      ];
}

class $AssetsAppImagesGen {
  const $AssetsAppImagesGen();

  /// File path: assets/app_images/lmsLogo.jpg
  AssetGenImage get lmsLogo =>
      const AssetGenImage('assets/app_images/lmsLogo.jpg');

  /// File path: assets/app_images/lmsLogopng.png
  AssetGenImage get lmsLogopng =>
      const AssetGenImage('assets/app_images/lmsLogopng.png');

  /// File path: assets/app_images/loginScreenImage.png
  AssetGenImage get loginScreenImage =>
      const AssetGenImage('assets/app_images/loginScreenImage.png');

  /// File path: assets/app_images/splash.png
  AssetGenImage get splash =>
      const AssetGenImage('assets/app_images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [lmsLogo, lmsLogopng, loginScreenImage, splash];
}

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsAppIconsGen appIcons = $AssetsAppIconsGen();
  static const $AssetsAppImagesGen appImages = $AssetsAppImagesGen();
  static const $AssetsColorsGen colors = $AssetsColorsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
