import 'package:flutter/material.dart';
import 'home_screen.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _formKey = GlobalKey<FormState>();
  final _cityController = TextEditingController();
  final _budgetController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;
  List<String> _preferences = [];

  final List<String> _options = ['Nature', 'History', 'Food', 'Adventure', 'Culture'];

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            city: _cityController.text,
            budget: double.parse(_budgetController.text),
            preferences: _preferences,
            startDate: _startDate!,
            endDate: _endDate!,
          ),
        ),
      );
    }
  }

  Future<void> _selectDateRange() async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _startDate = picked.start;
        _endDate = picked.end;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plan Your Trip')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _cityController,
                decoration: InputDecoration(labelText: 'Destination City'),
                validator: (value) => value!.isEmpty ? 'Enter a city' : null,
              ),
              TextFormField(
                controller: _budgetController,
                decoration: InputDecoration(labelText: 'Budget'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Enter a budget' : null,
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 8.0,
                children: _options.map((pref) {
                  return FilterChip(
                    label: Text(pref),
                    selected: _preferences.contains(pref),
                    onSelected: (bool selected) {
                      setState(() {
                        selected
                            ? _preferences.add(pref)
                            : _preferences.remove(pref);
                      });
                    },
                  );
                }).toList(),
              ),
              ElevatedButton(
                onPressed: _selectDateRange,
                child: Text('Select Travel Dates'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Find Tours'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
