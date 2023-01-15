import 'package:flutter/material.dart';

import 'package:fludemy/breakpoints.dart';
import 'package:fludemy/pages/home/widgets/sections/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= Breakpoints.tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 7 / 2,
            child: Stack(
              children: [
                const AspectRatio(
                  aspectRatio: 7 / 2,
                  child: TopSectionImage(),
                ),
                Positioned(
                  top: 56,
                  left: 50,
                  child: Card(
                    color: Colors.black87,
                    elevation: 16,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      width: 450,
                      child: Column(
                        children: [
                          Text(
                            'Let\'s learn Flutter with these courses',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 32,
                              color: Colors.grey[50],
                              letterSpacing: 1.25,
                              height: 0.85,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'The Flutter is amazing! '
                            'Create amazing things with the Flutter Framework.',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Colors.grey[100],
                              letterSpacing: 1.1,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        if (maxWidth >= Breakpoints.mobileBreakpoint) {
          return SizedBox(
            height: 300,
            child: Stack(
              children: [
                const SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: TopSectionImage(),
                ),
                Positioned(
                  top: 32,
                  left: 32,
                  child: Card(
                    color: Colors.black87,
                    elevation: 16,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 360,
                      child: Column(
                        children: [
                          Text(
                            'Let\'s learn Flutter with these courses',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 28,
                              color: Colors.grey[50],
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'The Flutter is amazing! '
                            'Create amazing things with the Flutter Framework.',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.grey[100],
                            ),
                          ),
                          const SizedBox(height: 16),
                          const CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Column(
          children: [
            const AspectRatio(
              aspectRatio: 10 / 3,
              child: TopSectionImage(),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Let\'s learn Flutter with these courses',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                      color: Colors.grey[50],
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The Flutter is amazing! '
                    'Create amazing things with the Flutter Framework.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.grey[100],
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomSearchField(),
            ),
          ],
        );
      },
    );
  }
}

class TopSectionImage extends StatelessWidget {
  const TopSectionImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/app.jpg',
      fit: BoxFit.cover,
    );
  }
}
