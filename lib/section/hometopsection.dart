import 'package:ecommerceappfirebase/section/shimmereffect.dart';
import 'package:flutter/material.dart';

class HomeTopSection extends StatefulWidget {
  const HomeTopSection({super.key});

  @override
  State<HomeTopSection> createState() => _HomeTopSectionState();
}

class _HomeTopSectionState extends State<HomeTopSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ShimmerEffectonimage(),
    );
  }
}
