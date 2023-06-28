import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/icon_text_button.dart';
import 'package:front/ui/theming.dart';

class SidebarSection extends StatelessWidget {
  final IconData icon;
  final String name;
  final Widget page;

  const SidebarSection({
    super.key,
    required this.icon,
    required this.name,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconTextButton(
        color: Theming.colorDartherBlue,
        name: name,
        icon: icon,
        height: 35,
        widht: 200,
        // onPressed:, // TODO
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  final List<SidebarSection> sections;

  const Sidebar({super.key, required this.sections, });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 153, 138, 138) // XXX: update this
        ),
        padding: const EdgeInsets.only(top: 20, right: 20),
        child: Column(children: sections),
      ),
    );
  }
}
