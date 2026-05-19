import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.imageBase64,
    required this.description,
    required this.createdAt,
    required this.fullName,
    required this.latitude,
    required this.longitude,
    required this.category,
    required this.heroTag,
    });
    final String imageBase64;
    final String description;
    final String createdAt;
    final String fullName;
    final double latitude;
    final double longitude;
    final String category;
    final String heroTag;


  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  Future<void> openMap() async {
    final url = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=${widget.latitude}
      ,${widget.longitude}',
    );
     final success = await launchUrl(uri, mode: LaunchMode.externalApplication);

     if (!success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tidak bisa membuka Google Maps')),
      );
     }
  }
   
  @override
  Widget build(BuildContext context) {

    final creadAtFormatted = DateFormat
    (''
    ).format(DateTime.parse(widget.createdAt),
    );
    return const Placeholder();
  }
}
body: SingleChildScrollView

