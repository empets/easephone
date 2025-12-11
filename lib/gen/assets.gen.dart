// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/icon_arrow_felt.svg
  SvgGenImage get iconArrowFelt =>
      const SvgGenImage('assets/icons/icon_arrow_felt.svg');

  /// File path: assets/icons/undraw_delivery-location_um5t.svg
  SvgGenImage get undrawDeliveryLocationUm5t =>
      const SvgGenImage('assets/icons/undraw_delivery-location_um5t.svg');

  /// File path: assets/icons/undraw_mobile-content_yz21.svg
  SvgGenImage get undrawMobileContentYz21 =>
      const SvgGenImage('assets/icons/undraw_mobile-content_yz21.svg');

  /// File path: assets/icons/undraw_newsfeed_8ms9.svg
  SvgGenImage get undrawNewsfeed8ms9 =>
      const SvgGenImage('assets/icons/undraw_newsfeed_8ms9.svg');

  /// File path: assets/icons/undraw_phone-call_ov3z.svg
  SvgGenImage get undrawPhoneCallOv3z =>
      const SvgGenImage('assets/icons/undraw_phone-call_ov3z.svg');

  /// File path: assets/icons/undraw_profile-pic_fatv.svg
  SvgGenImage get undrawProfilePicFatv =>
      const SvgGenImage('assets/icons/undraw_profile-pic_fatv.svg');

  /// File path: assets/icons/undraw_push-notifications_5z1s.svg
  SvgGenImage get undrawPushNotifications5z1s =>
      const SvgGenImage('assets/icons/undraw_push-notifications_5z1s.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    iconArrowFelt,
    undrawDeliveryLocationUm5t,
    undrawMobileContentYz21,
    undrawNewsfeed8ms9,
    undrawPhoneCallOv3z,
    undrawProfilePicFatv,
    undrawPushNotifications5z1s,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/logo
  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/images/logo/logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [logo];
}

class MyAssets {
  const MyAssets._();

  static const String package = 'com.example.epbomi';

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  static const String package = 'com.example.epbomi';

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
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
        colorMapper: colorMapper,
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
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/com.example.epbomi/$_assetName';
}
