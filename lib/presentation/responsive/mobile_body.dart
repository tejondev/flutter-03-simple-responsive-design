import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Mobile')),
      body: Column(
        children: [
          // Tarjeta principal
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              //height: 100,
              color: colors.primaryContainer,
            ),
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
      ),
    );
  }
}
