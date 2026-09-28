class ProducModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;

  const ProducModel(
    {
      required this.title,
      required this.id,
      required this.description,
      required this.price,
      required this.image
    }
  );

  factory ProducModel.fromJson(Map<String, dynamic> json)
  => ProducModel(
    title: json["title"] ?? "No title",
    id: json["id"] ?? 0,
    description: json["description"] ?? "No description",
    price: json["price"] ?? 0.0, 
    image: json["image"] ?? "No image"
    );
}