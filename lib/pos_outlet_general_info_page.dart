import 'package:flutter/material.dart';

class POSOutletGeneralInfoPage extends StatefulWidget {
  const POSOutletGeneralInfoPage({super.key});

  @override
  State<POSOutletGeneralInfoPage> createState() => _POSOutletGeneralInfoPageState();
}

class _POSOutletGeneralInfoPageState extends State<POSOutletGeneralInfoPage> {
  final TextEditingController _dealerIdController = TextEditingController(text: '7000323');
  final TextEditingController _parentDealerController = TextEditingController(text: 'N/A');
  final TextEditingController _emailController = TextEditingController();

  final List<String> _branchShops = [
    'Axiom Ventures LB HADNET',
    'Branch Shop 2',
    'Branch Shop 3',
  ];
  String _selectedBranchShop = 'Axiom Ventures LB HADNET';

  final List<String> _outletChannelTypes = [
    'Device Shop',
    'Channel Type 2',
    'Channel Type 3',
  ];
  String _selectedOutletChannelType = 'Device Shop';

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
            width: 120,
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
              'General information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 16),
            const Text('Dealer (HO) Shortcode ID'),
            const SizedBox(height: 4),
            TextField(
              controller: _dealerIdController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
              readOnly: true,
            ),
            const SizedBox(height: 16),
            const Text('Parent Dealer Name'),
            const SizedBox(height: 4),
            TextField(
              controller: _parentDealerController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
              readOnly: true,
            ),
            const SizedBox(height: 16),
            const Text('Distributor Branch Shop'),
            const SizedBox(height: 4),
            DropdownButtonFormField<String>(
              value: _selectedBranchShop,
              items: _branchShops.map((shop) {
                return DropdownMenuItem<String>(
                  value: shop,
                  child: Text(shop),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedBranchShop = value;
                  });
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Email'),
            const SizedBox(height: 4),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const Text('Outlet Channel Type'),
            const SizedBox(height: 4),
            DropdownButtonFormField<String>(
              value: _selectedOutletChannelType,
              items: _outletChannelTypes.map((type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedOutletChannelType = value;
                  });
                }
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
                      Navigator.pushNamed(context, '/owner-detail');
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