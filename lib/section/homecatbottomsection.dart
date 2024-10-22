import 'package:ecommerceappfirebase/section/shimmereffect.dart';
import 'package:flutter/material.dart';

class HomeCatBottomSection extends StatefulWidget {
  const HomeCatBottomSection({super.key});

  @override
  State<HomeCatBottomSection> createState() => _HomeCatBottomSectionState();
}

class _HomeCatBottomSectionState extends State<HomeCatBottomSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: Column(
          children: [
            Text("Category",
                style: TextStyle(
                  color: Colors.orange[500],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: ShimmerEffectonimage(),
            )
          ],
        ));
  }
}
