import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Desktop')),
      body: Row(
        children: [
          // Left panel
          Expanded(flex: 2, child: LeftPanel(colors: colors)),
          // Right panel
          Expanded(flex: 1, child: RigthPanel(colors: colors)),
        ],
      ),
    );
  }
}

class RigthPanel extends StatelessWidget {
  const RigthPanel({
    super.key,
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: colors.onPrimary,
      ),
    );
  }
}

class LeftPanel extends StatelessWidget {
  const LeftPanel({
    super.key,
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tarjeta principal
        Container(
          height: 300,
          color: colors.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        // Tarjetas secundarias
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                color: colors.secondaryContainer,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              );
            },
          ),
        )
      ],
    );
  }
}
