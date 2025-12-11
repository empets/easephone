
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:latlong2/latlong.dart';

class FormsHomeMapsInformation extends StatefulWidget {
  const FormsHomeMapsInformation({super.key});

  @override
  State<FormsHomeMapsInformation> createState() =>
      _FormsHomeMapsInformationState();
}

class _FormsHomeMapsInformationState extends State<FormsHomeMapsInformation>
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

  LatLng? _zoneStart;
  LatLng? _zoneEnd;

  void _onMapLongPress(TapPosition tapPosition, LatLng point) {
    setState(() {
      if (_zoneStart == null) {
        // Premier point de la zone
        _zoneStart = point;
        _zoneEnd = null;
      } else {
        // Deuxième point -> zone définie
        _zoneEnd = point;
      }
    });
  }

  // Position par défaut (ex : Abidjan)
  final LatLng _center = LatLng(5.347, -4.012); // remplace par ce que tu veux

  // Marqueurs dynamiques (tu peux les sauvegarder si besoin)
  final List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    // Exemple : ajoute un marqueur initial
    _markers.add(
      Marker(
        point: _center,
        width: 48,
        height: 48,
        child: Icon(Icons.location_on, size: 40, color: Colors.red),
      ),
    );
  }



  MarkerLayer buildAutoMarkers(String label) {
    // 1. Génération de 5 points proches de la zone
    final List<LatLng> positions = [
      LatLng(5.3891808, -4.0082932),
      LatLng(5.3899500, -4.0091000),
      LatLng(5.3887200, -4.0078000),
      LatLng(5.3894000, -4.0069000),
      LatLng(5.3901500, -4.0087500),
    ];

    // 2. Construction des Markers
    final markers = positions.map((pos) {
      return Marker(
        rotate: true,
        width: 100,
        height: 100,
        point: pos,
        child: GestureDetector(
          onTap: () {
            // showModalBottomSheet(
            //   context: context,
            //   backgroundColor: MyColorName.white,
            //   isScrollControlled: true,
            //   shape: const RoundedRectangleBorder(
            //     borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            //   ),
            //   builder: (BuildContext context) {
            //     return HomeDetails();
            //   },
            // );
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
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                onTap: (tapPosition, point) {
                  _animatedMapMove(point, 17);
                },
                initialCenter: const LatLng(5.3891808, -4.0082932),
                initialZoom: 18,
                maxZoom: 23,
                minZoom: 16,
                onLongPress: _onMapLongPress,
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
                      width: 100,
                      height: 100,
                      point: LatLng(5.3890300, -4.0082910),
                      child: Column(
                        children: [
                          Material(
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
                                'Own',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100.withValues(
                                alpha: 0.6,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              // height: 30,
                              // width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                Icons.circle,
                                size: 17,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                buildAutoMarkers('logement'),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: _zoneStart != null && _zoneEnd != null
                    ? () {
                        Navigator.of(
                          context,
                        ).push(fadeRoute(const FormsHomeInformation()));
                      }
                    : null,
                child: Text('Valider la zone'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
