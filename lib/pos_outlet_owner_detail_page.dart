import 'package:flutter/material.dart';

class POSOutletOwnerDetailPage extends StatefulWidget {
  const POSOutletOwnerDetailPage({super.key});

  @override
  State<POSOutletOwnerDetailPage> createState() => _POSOutletOwnerDetailPageState();
}

class _POSOutletOwnerDetailPageState extends State<POSOutletOwnerDetailPage> {
  final TextEditingController _businessTitleController = TextEditingController(text: 'Owner');
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _fathersNameController = TextEditingController();
  final TextEditingController _grandFathersNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController(text: '251799999999');

  final List<String> _genders = ['Male', 'Female', 'Other'];
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Create New POS Outlet',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            alignment: Alignment.centerLeft,
            height: 2,
            color: Colors.green,
            width: 180,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text(
              'Business Owner Detail',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 16),
            const Text('Business Title'),
            const SizedBox(height: 4),
            TextField(
              controller: _businessTitleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text('First Name'),
            const SizedBox(height: 4),
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Fathers Name'),
            const SizedBox(height: 4),
            TextField(
              controller: _fathersNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Grand Fathers Name'),
            const SizedBox(height: 4),
            TextField(
              controller: _grandFathersNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Phone Number'),
            const SizedBox(height: 4),
            TextField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Gender'),
            const SizedBox(height: 4),
            DropdownButtonFormField<String>(
              value: _selectedGender,
              hint: const Text('Select Gender'),
              items: _genders.map((gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      side: const BorderSide(color: Colors.black26),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Back'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/capture-image');
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 