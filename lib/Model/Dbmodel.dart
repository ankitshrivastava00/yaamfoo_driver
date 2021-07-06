import 'dart:convert';

Dbmodel DbmodelFromJson(String str) {
  final jsonData = json.decode(str);
  return Dbmodel.fromMap(jsonData);
}

String DbmodelToJson(Dbmodel data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}



class Dbmodel {

  int id;
  String product_id;
  String product_name;
  String weight;
  String unit;
  String price;
  String description;
  String offerprice;
  String offerpercent;
  String totalquantity;
  String cartquantity;
  String type;
  String modelName;
  String packof;
  String teaform;
  String flavor;
  String organic;
  String defaultImage;
  String total;
  String discount;


  Dbmodel({
    this.id,
    this.product_id,
    this.product_name,
    this.weight,
    this.unit,
    this.price,
    this.description,
    this.offerpercent,
    this.offerprice,
    this.totalquantity,
    this.cartquantity ,
    this.type ,
    this.modelName ,
    this.packof,
    this.teaform,
    this.flavor,
    this.organic,
    this.defaultImage,
    this.total,
    this.discount
  });


  factory Dbmodel.fromMap(Map<String, dynamic> json) => new Dbmodel(
    id: json["id"],
    product_id: json["product_id"],
    product_name: json["product_name"],
    weight: json["weight"],
    unit: json["unit"],
    price: json["price"],
    description: json["description"],
    offerprice: json["offerprice"],
    offerpercent: json["offerpercent"],
    totalquantity: json["totalquantity"],
    cartquantity: json["cartquantity"],
    type: json["type"],
    modelName: json["modelname"],
    packof: json["packof"],
    teaform: json["teaform"],
    flavor: json["flavor"],
    organic: json["organic"],
    defaultImage: json["defaultImage"],
    total: json["Total"],
    discount: json["Discount"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "product_id": product_id,
    "product_name": product_name,
    "weight": weight,
    "unit": unit,
    "price": price,
    "description": description,
    "offerprice": offerprice,
    "offerpercent": offerpercent,
    "totalquantity": totalquantity,
    "cartquantity": cartquantity,
    "type": type,
    "modelname": modelName,
    "packof": packof,
    "teaform": teaform,
    "flavor": flavor,
    "organic": organic,
    "defaultImage": defaultImage,
    "Total": total,
    "Discount": discount,
  };
}

/*
class Dbmodel {
  int id;
  String product_id;
  String product_name;
  String quantity;
  String price;
  String category;
  String description;
  String image;
  String label;
  String unit;


  Dbmodel({
    this.id,
    this.product_id,
    this.product_name,
    this.quantity,
    this.price,
    this.category,
    this.description,
    this.image,
    this.label,
    this.unit
  });

  factory Dbmodel.fromMap(Map<String, dynamic> json) => new Dbmodel(
    id: json["id"],
    product_id: json["product_id"],
    product_name: json["product_name"],
    quantity: json["quantity"],
    price: json["price"],
    category: json["category"],
    description: json["description"],
    image: json["image"],
    label: json["label"],
    unit: json["unit"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "product_id": product_id,
    "product_name": product_name,
    "quantity": quantity,
    "price": price,
    "category": category,
    "description": description,
    "image": image,
    "label": label,
    "unit": unit,

  };
}*/
