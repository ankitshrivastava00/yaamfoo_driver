import 'dart:io';

class AddressListModel {
  String status;
  List<Address> msg;

  AddressListModel({this.status, this.msg});

  AddressListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['msg'] != null) {
      msg = new List<Address>();
      json['msg'].forEach((v) {
        msg.add(new Address.fromJson(v));
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

class Address {
  String id;
  String clid;
  String fullname;
  String mobile;
  String email;
  String address1;
  String address2;
  String city;
  String pincode;
  String state;
  String adresstype;
  String addedDate;

  Address(
      {this.id,
        this.clid,
        this.fullname,
        this.mobile,
        this.email,
        this.address1,
        this.address2,
        this.city,
        this.pincode,
        this.state,
        this.adresstype,
        this.addedDate});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clid = json['clid'];
    fullname = json['fullname'];
    mobile = json['mobile'];
    email = json['email'];
    address1 = json['address1'];
    address2 = json['address2'];
    city = json['city'];
    pincode = json['pincode'];
    state = json['state'];
    adresstype = json['adresstype'];
    addedDate = json['added_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['clid'] = this.clid;
    data['fullname'] = this.fullname;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['city'] = this.city;
    data['pincode'] = this.pincode;
    data['state'] = this.state;
    data['adresstype'] = this.adresstype;
    data['added_date'] = this.addedDate;
    return data;
  }
}