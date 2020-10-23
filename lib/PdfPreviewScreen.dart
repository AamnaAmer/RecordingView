import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:recording_page/screens/home_screen.dart';
class PdfPreviewScreen extends StatelessWidget {
  final String path;

  PdfPreviewScreen({this.path});

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      path: path,
    );
  }
}