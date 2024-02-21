import 'package:flutter/material.dart';

class DasGrueneDingensDa extends StatelessWidget {
  const DasGrueneDingensDa({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            // die Objekte links unten im Image
            children: [
              Container(
                // blauer Strich und …
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.8),
                    borderRadius: const BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 40,
              ),
              const SizedBox(
                width: 4.0,
              ),
              Container(
                // ...  weiße kleine Kreise
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 8,
              ),
              const SizedBox(
                width: 4.0,
              ),
              Container(
                // ...  weiße kleine Kreise
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 8,
              ),
              const SizedBox(
                width: 4.0,
              ),
              Container(
                // ...  weiße kleine Kreise
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 8,
              ),
            ],
          );
  }
}