class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick food here',
      image: "images/screen1.png",
      title: 'select from our menu'),
  UnboardingContent(
      description: 'Pay on delivery or card',
      image: "images/screen2.png",
      title: 'quick and easy'),
  UnboardingContent(
      description: 'food on your doorstep',
      image: "images/screen3.png",
      title: 'quick and efficient'),
];
