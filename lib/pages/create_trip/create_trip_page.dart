import 'package:flutter/material.dart';
import 'package:mor_trip_mate/core/constants/app_constants.dart';
import 'package:mor_trip_mate/core/shared/shared_widgets.dart';

class CreateTripPage extends StatefulWidget {
  const CreateTripPage({super.key});

  @override
  State<CreateTripPage> createState() => _CreateTripPageState();
}

class _CreateTripPageState extends State<CreateTripPage> {
  DateTime? selectedDate;
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  Future<void> _selectDate(String whichDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year, 1, 1),
      firstDate: DateTime(DateTime.now().year - 2, 1, 1),
      lastDate: DateTime(DateTime.now().year + 1, 12, 31),
    );

    if (pickedDate == null) return;

    final String formattedDate =
        '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';

    setState(() {
      selectedDate = pickedDate;
      if (whichDate == 'start') {
        startDateController.text = formattedDate;
      }
      if (whichDate == 'end') {
        endDateController.text = formattedDate;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headingLargeText("Create Trip", context),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  label: Text("Trip Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: startDateController,
                decoration: InputDecoration(
                  label: Text("Start Date"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onTap: () => _selectDate('start'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: endDateController,
                decoration: InputDecoration(
                  label: Text("End Date"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onTap: () => _selectDate('end'),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  label: Text("Description"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Create"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
