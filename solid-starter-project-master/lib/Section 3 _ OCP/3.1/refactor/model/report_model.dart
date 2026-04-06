class ReportModel {
  final String title;
  final List<String> items;
  final DateTime generatedAt;

  ReportModel({
    required this.title,
    required this.items,
    required this.generatedAt,
  });

  factory ReportModel.fromJson(Map<String, dynamic> json) {
    return ReportModel(
      title: json['title'] ?? "",
      items: List.from(json['items']) ?? [],
      generatedAt: json['generatedAt'] ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {'title': title, 'generatedAt': generatedAt, 'items': items};
  }
}
