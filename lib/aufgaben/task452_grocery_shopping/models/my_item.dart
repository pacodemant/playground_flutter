import 'package:flutter/material.dart';

//! Code von Dima am 20.02.24

class MyItem extends StatefulWidget {
  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final Color color;

  const MyItem({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.color = Colors.white,
  });

  @override
  State<MyItem> createState() => _MyItemState();
}

class _MyItemState extends State<MyItem> {
  bool isFavorite = false;

  void toggleIsFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: toggleIsFavorite,
            ),
          ),
          Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.color,
                      ),
                    ),
                    Positioned(
                      top: 50,
                      child: Image.asset(
                        widget.imageUrl,
                        width: 100,
                        height: 100,
                      ),
                    )
                  ],
                ),
                Text(
                  "\$${widget.price}",
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}