class ProssorModel {
  ProssorModel({required this.content, required this.filePath});
  final String content;
  final String filePath;

  factory ProssorModel.formJson(Map<String, dynamic> json) {
    return ProssorModel(
      content: json['content'] ?? "",
      filePath: json['filePath'] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    return {'content': content, 'filePath': filePath};
  }
}
