import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int reviews;

  const StarRating({
    Key? key,
    required this.rating,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      stars.add(
        Icon(
          i <= rating ? Icons.star : Icons.star,
          color:
              i <= rating ? const Color(0xFFF8422B) : const Color(0xFFFAC3BD),
          size: 20.0,
        ),
      );
    }

    return Row(
      children: [
        Row(children: stars),
        const SizedBox(width: 8.0),
        Text(
          '$rating (${reviews}k)',
          style: const TextStyle(
            fontSize: 12.0,
            color: Color(0xFFF8422B),
          ),
        ),
      ],
    );
  }
}
