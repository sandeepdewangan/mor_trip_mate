import 'package:flutter/material.dart';
import 'package:mor_trip_mate/core/constants/app_constants.dart';
import 'package:mor_trip_mate/core/constants/assets_constants.dart';
import 'package:mor_trip_mate/core/shared/shared_widgets.dart';

class TripModel {
  final String name;
  final String persons;
  final String date;

  const TripModel({
    required this.name,
    required this.persons,
    required this.date,
  });
}

const data = [
  TripModel(
    name: 'Kashmir Trip 2025',
    persons: "5",
    date: "12 Jan → 15 Jan",
  ),
  TripModel(name: 'Puri Trip 2025', persons: "8", date: "30 Jan → 02 Feb"),
  TripModel(
    name: 'Panchmadi Trip 2026',
    persons: "22",
    date: "01 Jan → 02 Jan",
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headingLargeText("Trips", context),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text("Search places"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 5,
                    ),
                    visualDensity: VisualDensity(horizontal: -1, vertical: 4),
                    leading: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(5),
                      child: Image.asset(AssetsConstants.trip1),
                    ),
                    title: Text(
                      data[index].name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "🗓️ ${data[index].date}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          "👤 ${data[index].persons}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
