import 'package:flutter/material.dart';

class ReportCarScreen extends StatefulWidget {
  @override
  _ReportCarScreenState createState() => _ReportCarScreenState();
}

class _ReportCarScreenState extends State<ReportCarScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController vinController = TextEditingController();
  TextEditingController plateController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  String? selectedType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإبلاغ عن مركبة مفقودة'),
        backgroundColor: Colors.blue[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: vinController,
                decoration: InputDecoration(
                  labelText: 'رقم الهيكل (VIN)',
                  prefixIcon: Icon(Icons.confirmation_number),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال رقم الهيكل';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: plateController,
                decoration: InputDecoration(
                  labelText: 'رقم اللوحة',
                  prefixIcon: Icon(Icons.car_repair),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال رقم اللوحة';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              DropdownButtonFormField(
                value: selectedType,
                decoration: InputDecoration(
                  labelText: 'نوع المركبة',
                  prefixIcon: Icon(Icons.directions_car),
                  border: OutlineInputBorder(),
                ),
                items: [
                  'سيارة',
                  'شاحنة',
                  'باص',
                  'دراجة نارية',
                  'أخرى'
                ].map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {