// ignore_for_file: public_member_api_docs, sort_constructors_first
class OnboardingContentModel {
  String image;
  String title;
  String description;
  OnboardingContentModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingContentModel> onboardingContentList = [
  OnboardingContentModel(
      image: "assets/images/onboarding_1.png",
      title: "Discover Amazing Place",
      description:
          "Plan Your Trip, choose your destination. Pick the best local guide for your holiday"),
  OnboardingContentModel(
      image: "assets/images/onboarding_2.png",
      title: "Book a Local",
      description:
          "You can book private city tours with locals on-the-go and experience a new place like never before"),
  OnboardingContentModel(
      image: "assets/images/onboarding_3.png",
      title: "Share Your Adventures",
      description:
          "Enjoy your holiday! don't forget to take a photo and share to the world"),
];
