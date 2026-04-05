class OrderModel {
   String id;
  double total;
  List<String> items;

  OrderModel({required this.id, required this.total, required this.items});

  factory OrderModel.fromJson(Map<String,dynamic> json){
    return OrderModel(id: json['id'], total: json['total'], items: List<String>.from(json['items']));

  }

  Map<String,dynamic> toJson(){
    return {
      'id': id,
      'total': total,
      'items': items

    };
  }

}

