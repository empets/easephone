import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:latlong2/latlong.dart';

class HomeMapsOverViewScreen extends StatefulWidget {
  const HomeMapsOverViewScreen({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.adress,
  });

  final double latitude;
  final double longitude;
  final String adress;

  @override
  State<HomeMapsOverViewScreen> createState() => _HomeMapsOverViewScreenState();
}

class _HomeMapsOverViewScreenState extends State<HomeMapsOverViewScreen>
    with TickerProviderStateMixin {
  final MapController _mapController = MapController();
  late MapController mapController;

  void _animatedMapMove(LatLng destLocation, double dezoomer) {
    // Décalage pour que le marqueur soit plus haut dans l’écran
    const double offsetLatitude = -0.002;

    // Nouveau point où la caméra doit aller (un peu plus haut que le marqueur)
    final LatLng cameraTarget = LatLng(
      destLocation.latitude + offsetLatitude,
      destLocation.longitude,
    );

    final latTween = Tween<double>(
      begin: mapController.camera.center.latitude,
      end: cameraTarget.latitude,
    );
    final lngTween = Tween<double>(
      begin: mapController.camera.center.longitude,
      end: cameraTarget.longitude,
    );
    final zoomTween = Tween<double>(
      begin: mapController.camera.zoom,
      end: dezoomer,
    );

    final controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    final animation = CurvedAnimation(
      parent: controller,
      curve: Curves.fastOutSlowIn,
    );

    controller.addListener(() {
      mapController.move(
        LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
        zoomTween.evaluate(animation),
      );
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }

  // Position par défaut (ex : Abidjan)

  // Marqueurs dynamiques (tu peux les sauvegarder si besoin)
  final List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    // Exemple : ajoute un marqueur initial
    _markers.add(
      Marker(
        point: LatLng(widget.latitude, widget.longitude),
        width: 48,
        height: 48,
        child: Icon(Icons.location_on, size: 40, color: Colors.red),
      ),
    );
  }

  MarkerLayer buildAutoMarkers(String label) {
    // 1. Génération de 5 points proches de la zone
    final List<LatLng> positions = [LatLng(widget.latitude, widget.longitude)];

    // 2. Construction des Markers
    final markers = positions.map((pos) {
      return Marker(
        rotate: true,
        width: 100,
        height: 100,
        point: pos,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: MyColorName.white,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              builder: (BuildContext context) {
                return SizedBox();
                // return HomeDetails();
              },
            );
          },
          child: Column(
            children: [
              Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    label,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 1),
              Container(
                // padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.circle, color: Color(0xFFF16E00), size: 18),
              ),
            ],
          ),
        ),
      );
    }).toList();

    // 3. Retourne directement un MarkerLayer
    return MarkerLayer(markers: markers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              onTap: (tapPosition, point) {
                _animatedMapMove(point, 17);
              },
              initialCenter: LatLng(widget.latitude, widget.longitude),
              initialZoom: 18,
              maxZoom: 23,
              minZoom: 16,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),

              MarkerLayer(
                alignment: Alignment.topCenter,
                markers: [
                  Marker(
                    rotate: true,
                    width: 100.h,
                    height: 100.h,
                    point: LatLng(widget.latitude, widget.longitude),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 7,
                                horizontal: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                widget.adress,
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          // height: 30,
                          // width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Icon(
                            Icons.location_history,
                            size: 20.r,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 28.h,
            left: 7.w,

            child: Material(
              elevation: 4,
              shape: const CircleBorder(),
              child: InkWell(
                onTap: () => Navigator.maybePop(context),
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 24,
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
