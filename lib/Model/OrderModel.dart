class OrderModel {
  String status;
  List<Order> msg;

  OrderModel({this.status, this.msg});

  OrderModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['msg'] != null) {
      msg = new List<Order>();
      json['msg'].forEach((v) {
        msg.add(new Order.fromJson(v));
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

class Order {
  String id;
  String clid;
  String shipid;
  String productids;
  String productquantity;
  String paymethod;
  String subtotal;
  String discount;
  String total;
  String promocode;
  String codeoffer;
  String deliverycharge;
  String redeempoint;
  String orderdate;
  String orderstatus;
  String expected_date;
  String showorderedid;

  Order(
      {this.id,
        this.clid,
        this.shipid,
        this.productids,
        this.productquantity,
        this.paymethod,
        this.subtotal,
        this.discount,
        this.total,
        this.promocode,
        this.codeoffer,
        this.deliverycharge,
        this.redeempoint,
        this.orderdate,
        this.orderstatus,
        this.expected_date,
      this.showorderedid});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clid = json['clid'];
    shipid = json['shipid'];
    productids = json['productids'];
    productquantity = json['productquantity'];
    paymethod = json['paymethod'];
    subtotal = json['subtotal'];
    discount = json['discount'];
    total = json['total'];
    promocode = json['promocode'];
    codeoffer = json['codeoffer'];
    deliverycharge = json['deliverycharge'];
    redeempoint = json['redeempoint'];
    orderdate = json['orderdate'];
    orderstatus = json['orderstatus'];
    expected_date = json['expected_date'];
    showorderedid = json['showorderedid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['clid'] = this.clid;
    data['shipid'] = this.shipid;
    data['productids'] = this.productids;
    data['productquantity'] = this.productquantity;
    data['paymethod'] = this.paymethod;
    data['subtotal'] = this.subtotal;
    data['discount'] = this.discount;
    data['total'] = this.total;
    data['promocode'] = this.promocode;
    data['codeoffer'] = this.codeoffer;
    data['deliverycharge'] = this.deliverycharge;
    data['redeempoint'] = this.redeempoint;
    data['orderdate'] = this.orderdate;
    data['orderstatus'] = this.orderstatus;
    data['expected_date'] = this.expected_date;
    data['showorderedid'] = this.showorderedid;
    return data;
  }
}