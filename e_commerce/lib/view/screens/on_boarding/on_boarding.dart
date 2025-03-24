import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/on_boarding/build_onboarding_items.dart';
import '../../widget/on_boarding/onboarding_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                BuildOnboardingItems(
                  image: "assets/images/image 6.png",
                  title: "Welcome to Fresh Fruits",
                  subtitle: "Grocery application",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                ),
                BuildOnboardingItems(
                  image: "assets/images/image 6.png",
                  title: "Fresh & Organic",
                  subtitle: "Best quality products",
                  description: "We provide best quality Fruits to your family",
                ),
                BuildOnboardingItems(
                  image: "assets/images/Group.png",
                  title: "Fast Delivery",
                  subtitle: "Quick and reliable",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.green,
              dotColor: Colors.grey.shade300,
              dotHeight: 8,
              dotWidth: 8,
              expansionFactor: 3,
            ),
          ),
          OnboardingButton(controller: _controller, currentPage: currentPage),
        ],
      ),
    );
  }
}
