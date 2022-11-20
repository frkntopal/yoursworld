import 'package:flutter/material.dart';
import 'package:city_picker_from_map/city_picker_from_map.dart';
import 'package:yours_world/selectcountry.dart';

class world extends StatefulWidget {
  const world({super.key});

  @override
  State<world> createState() => _worldState();
}

class _worldState extends State<world> {
  City? selectedCity;
  final GlobalKey<CityPickerMapState> _mapKey = GlobalKey();

  void SelectCountry(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/country');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected City: ${selectedCity?.title ?? '(?)'}'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              _mapKey.currentState?.clearSelect();
              setState(
                () {
                  selectedCity = null;
                },
              );
            },
          )
        ],
      ),
      body: Center(
        child: InteractiveViewer(
          scaleEnabled: true,
          panEnabled: true,
          constrained: true,
          child: InkWell(
            splashColor: Theme.of(context).primaryColor,
            onTap: () => SelectCountry(context),
            child: CityPickerMap(
              key: _mapKey,
              width: double.infinity,
              height: double.infinity,
              map: Maps.TURKEY,
              onChanged: (city) {
                setState(() {
                  selectedCity = city;
                });
              },
              actAsToggle: true,
              dotColor: Color.fromARGB(255, 22, 20, 20),
              selectedColor: Color.fromARGB(255, 127, 154, 167),
              strokeColor: Color.fromARGB(60, 19, 17, 17),
            ),
          ),
        ),
      ),
    );
  }
}
