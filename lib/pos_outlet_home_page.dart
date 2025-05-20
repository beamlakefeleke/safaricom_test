import 'package:flutter/material.dart';

class POSOutletHomePage extends StatefulWidget {
  const POSOutletHomePage({super.key});

  @override
  State<POSOutletHomePage> createState() => _POSOutletHomePageState();
}

class _POSOutletHomePageState extends State<POSOutletHomePage> {
  final TextEditingController _msisdnController = TextEditingController();
  String? _infoText;
  bool _showResult = false;

  void _searchInfo() {
    setState(() {
      _showResult = true;
      _infoText = 'POS Outlet Doesn\'t Exist\n\nMicro Merchant';
    });
  }

  void _cancel() {
    setState(() {
      _showResult = false;
      _msisdnController.clear();
    });
  }

  void _submit() {
    Navigator.pushNamed(context, '/general-info');
  }

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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text(
              'Check POS outlet information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 4),
            const Text(
              'Enter the MSISDN to check if it exists or not',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 16),
            const Text(
              'MSISDN',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            const SizedBox(height: 4),
            TextField(
              controller: _msisdnController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '+251799999999',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
              maxLength: 8,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: _searchInfo,
                child: const Text(
                  'Search Information',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16),
            if (_showResult)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.warning_amber_rounded, color: Colors.green, size: 40),
                      SizedBox(width: 8),
                      Text(
                        'POS Outlet Doesn\'t Exist',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    height: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFFE6F7EA),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.green, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.work_outline, color: Colors.green, size: 40),
                        SizedBox(width: 40),
                        SizedBox(height: 80),
                        Text(
                          'Micro Merchant',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            if (_showResult) const SizedBox(height: 16),
            if (_showResult)
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
                      onPressed: _cancel,
                      child: const Text('Cancel'),
                    ),
                  ),
                ],
              ),
            if (_showResult) const SizedBox(height: 12),
            if (_showResult)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: _submit,
                  child: const Text(
                    'Continue Onboarding',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
} 