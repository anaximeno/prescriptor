import 'package:flutter/material.dart';

import 'views/views.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: here we should be choosing withing showing the doctor home page
    //  view or the pharmacist's.
    return const Prescription();
  }
}
