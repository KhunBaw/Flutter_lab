import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';

import 'network.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};
  BitmapDescriptor destinationIcon;

  Set<Polygon> _polygons = HashSet<Polygon>();
  Set<Polyline> polyLines = {};
  List<LatLng> polyPoints = [];

  LocationData currentLocation;
  Location location;
  BitmapDescriptor currentLocationIcon;
  var data;

  static final CameraPosition _kHome = CameraPosition(
    target: LatLng(7.548283, 99.6301889),
    zoom: 17,
  );

  static final CameraPosition _kRobinsun = CameraPosition(
      // bearing: 192.8334901395799,
      target: LatLng(7.5637313, 99.6257364),
      // tilt: 59.440717697143555,
      zoom: 17);

  static final CameraPosition _klume = CameraPosition(
      // bearing: 192.8334901395799,
      target: LatLng(7.5624662, 99.6170293),
      // tilt: 59.440717697143555,
      zoom: 17);

  void _setCustomMapPin() async {
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 10, size: Size(1.0, 1.0)),
        'images/destination_map_marker.png');
  }

  void _setCurrentLationIcons() async {
    currentLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5), 'images/driving_pin.png');
  }

  @override
  void initState() {
    super.initState();
    location = new Location();

    location.onLocationChanged.listen((LocationData cLoc) {
      currentLocation = cLoc;
      updatePinOnMap();
      print(currentLocation.latitude);
      print(currentLocation.longitude);
    });

    _setCurrentLationIcons();
    _setCustomMapPin();
    _getJsonData();
    _setPolygonsCS();
  }

  void updatePinOnMap() async {
    setState(() {
      // updated position
      var pinPosition =
          LatLng(currentLocation.latitude, currentLocation.longitude);

      _markers.removeWhere((m) => m.markerId.value == 'currentLocationIcon');
      _markers.add(Marker(
        markerId: MarkerId('currentLocationIcon'),
        position: pinPosition,
        icon: currentLocationIcon,
        infoWindow:
            InfoWindow(title: "Current Location", snippet: "I am here now!"),
        //icon: BitmapDescrip
      ));
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.home_filled,
                color: Colors.orangeAccent,
              ),
              onPressed: _goToHome),
          IconButton(
              icon: Icon(Icons.shopping_bag, color: Colors.greenAccent),
              onPressed: _goToRobinsun),
          IconButton(
              icon:
                  Icon(Icons.calculate_rounded, color: Colors.deepOrangeAccent),
              onPressed: _goToLume)
        ],
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kHome,
        markers: _markers,
        polygons: _polygons,
        polylines: polyLines,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          _onMapCreated(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToRobinsun,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('1'),
        position: LatLng(7.548283, 99.6301889),
        icon: BitmapDescriptor.defaultMarkerWithHue(80),
        infoWindow: InfoWindow(title: "Home", snippet: 'Go to Shopping!!'),
      ));

      _markers.add(Marker(
        markerId: MarkerId('2'),
        position: LatLng(7.5637313, 99.6257364),
        icon: BitmapDescriptor.defaultMarkerWithHue(30),
        onTap: () => _openOnGoogleMapApp(7.5637313, 99.6257364),
        infoWindow: InfoWindow(title: "Robinsun", snippet: 'Go to Shopping!!'),
      ));

      _markers.add(Marker(
        markerId: MarkerId('3'),
        position: LatLng(7.5624662, 99.6170293),
        icon: destinationIcon,
        infoWindow: InfoWindow(title: "ลืม", snippet: 'ฮ่าๆๆๆ!!'),
      ));
    });
  }

  _openOnGoogleMapApp(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      // Could not open the map.
    }
  }

  void _setPolygonsCS() {
    // ignore: deprecated_member_use
    List<LatLng> polygonLatLongsCS = List<LatLng>();
    polygonLatLongsCS.add(LatLng(7.563617, 99.625626));
    polygonLatLongsCS.add(LatLng(7.562779, 99.626034));
    polygonLatLongsCS.add(LatLng(7.563553, 99.627587));
    polygonLatLongsCS.add(LatLng(7.564287, 99.627185));
    _polygons.add(
      Polygon(
          polygonId: PolygonId("0"),
          points: polygonLatLongsCS,
          fillColor: Colors.orangeAccent,
          strokeWidth: 3,
          strokeColor: Colors.black),
    );
  }

  Future<void> _goToRobinsun() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kRobinsun));
  }

  Future<void> _goToHome() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kHome));
  }

  Future<void> _goToLume() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_klume));
  }

  Future<LocationData> getCurrentLocation() async {
    Location location = Location();

    return await location.getLocation();
  }

  _setPolyLines() {
    Polyline polyline = Polyline(
      polylineId: PolylineId("polyline"),
      color: Colors.lightGreenAccent,
      points: polyPoints,
    );
    polyLines.add(polyline);
    setState(() {});
  }

  void _getJsonData() async {
    // Create an instance of Class NetworkHelper which uses http package
    // for requesting data to the server and receiving response as JSON format

    NetworkHelper network = NetworkHelper(
      startLat: 7.548283,
      startLng: 99.6301889,
      endLat: 7.5637313,
      endLng: 99.6257364,
    );

    try {
      // getData() returns a json Decoded data
      data = await network.getData();
      //print('data');
      //print(data);
      // We can reach to our desired JSON data manually as following
      LineString ls =
          LineString(data['features'][0]['geometry']['coordinates']);

      for (int i = 0; i < ls.lineString.length; i++) {
        polyPoints.add(LatLng(ls.lineString[i][1], ls.lineString[i][0]));
      }
      _setPolyLines();
    } catch (e) {
      print(e);
    }
  }
}

class LineString {
  LineString(this.lineString);
  List<dynamic> lineString;
}
