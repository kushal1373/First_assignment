import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double principal = 0.0; // Principal amount
  double rate = 0.0; // Interest rate
  double time = 0.0; // Time period
  double interest = 0.0; // Calculated Simple Interest

  final principalController = TextEditingController();
  final rateController = TextEditingController();
  final timeController = TextEditingController();
  final myKey = GlobalKey<FormState>(); // Key for form validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              // Input for Principal
              TextFormField(
                controller: principalController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Principal',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  principal = double.tryParse(value) ?? 0.0;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Principal';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),

              // Input for Rate of Interest
              TextFormField(
                controller: rateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Rate of Interest (%)',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  rate = double.tryParse(value) ?? 0.0;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Rate of Interest';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),

              // Input for Time Period
              TextFormField(
                controller: timeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Time Period (years)',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  time = double.tryParse(value) ?? 0.0;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Time Period';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Display the calculated Simple Interest
              Text(
                'Simple Interest: ${interest.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 30),
              ),

              const SizedBox(height: 20),

              // Button to calculate Simple Interest
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        // Calculate Simple Interest
                        interest = (principal * rate * time) / 100;
                      });
                    }
                  },
                  child: const Text('Calculate Interest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}