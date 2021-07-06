class CartModel {
  String status;
  var data;
  List<CartData> msg;

  CartModel({this.status, this.msg});

  CartModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['msg'] != null) {
      msg = new List<CartData>();
      json['msg'].forEach((v) {
        msg.add(new CartData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.msg != null) {
      data['msg'] = this.msg.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CartData {
  String id;
  String name;
  String weight;
  String unit;
  String price;
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

  CartData(
      {this.id,
      this.name,
      this.weight,
      this.unit,
      this.price,
      this.offerprice,
      this.offerpercent,
      this.totalquantity,
      this.cartquantity,
      this.type,
      this.modelName,
      this.packof,
      this.teaform,
      this.flavor,
      this.organic,
      this.defaultImage});

  CartData.fromJson(Map<String, dynamic> json) {
    id = json["product_id"];
    name = json["product_name"];
    weight = json["weight"];
    unit = json["unit"];
    price = json["price"];
    offerprice = json["offerprice"];
    offerpercent = json["offerpercent"];
    totalquantity = json["totalquantity"];
    cartquantity = json["cartquantity"];
    type = json["type"];
    modelName = json["modelName"];
    packof = json["packof"];
    teaform = json["teaform"];
    flavor = json["flavor"];
    organic = json["organic"];
    defaultImage = json["defaultImage"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["product_id"] = this.id;
    data["product_name"] = this.name;
    data["weight"] = this.weight;
    data["unit"] = this.unit;
    data["price"] = this.price;
    data["offerprice"] = this.offerprice;
    data["offerpercent"] = this.offerpercent;
    data["totalquantity"] = this.totalquantity;
    data["cartquantity"] = this.cartquantity;
    data["type"] = this.type;
    data["modelName"] = this.modelName;
    data["packof"] = this.packof;
    data["teaform"] = this.teaform;
    data["flavor"] = this.flavor;
    data["organic"] = this.organic;
    data["defaultImage"] = this.defaultImage;
    return data;
  }

  Map<String, dynamic> toJson1() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["quantity"] = this.cartquantity;

    return data;
  }
}
