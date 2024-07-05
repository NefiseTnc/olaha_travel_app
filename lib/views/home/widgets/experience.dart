import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Experiences in spotlight",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  "assets/images/home_image_1.png",
                  width: 280,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Image.asset(
                  "assets/icons/heart.png",
                  color: Colors.white,
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Coffee • Cultural Tour",
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  "Unique Egg Coffee class with Local",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6, horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: AppColor.greenColor,
                    ),
                    child: Row(
                      children: [
                        const Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Image.asset(
                          "assets/icons/star.png",
                          width: 12,
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "\$28",
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: " /person",
                          style: TextStyle(
                            color: AppColor.blackColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
