

/// status : "success"
/// message : "Otp is verified"
/// accessToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNTZmZWUwODdhODRkMjZhYTljYzc0NSIsImlhdCI6MTYzMzQxODkxNiwiZXhwIjoxNjM0MjgyOTE2fQ.hhVMN07VLxCkePkHVo7XDnpSZJ9zvWYx_QY57N9Hk6k"
/// data : {"user":{"userCart":{"cartItems":[{"_id":"615acd634ec3f94c3ebf5898","itemId":"61515f2a8dde0e6b01b6094d","name":"Cheese Pizzaa","quantity":4,"price":4,"customisation":[]}],"noContactDelivery":false},"wishlist":["61541fce548e4b4b6cbdb4c8","61568bf2311e5406b07fc3f5"],"_id":"6156fee087a84d26aa9cc745","phone":"9878907651","email":"user212@gmail.com","name":"user212"}}

class LoginResposne {
  String? status;
  String? message;
  String? accessToken;
  Data? data;

  LoginResposne({
    this.status,
    this.message,
    this.accessToken,
    this.data});

  LoginResposne.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    accessToken = json['accessToken'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['accessToken'] = accessToken;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// user : {"userCart":{"cartItems":[{"_id":"615acd634ec3f94c3ebf5898","itemId":"61515f2a8dde0e6b01b6094d","name":"Cheese Pizzaa","quantity":4,"price":4,"customisation":[]}],"noContactDelivery":false},"wishlist":["61541fce548e4b4b6cbdb4c8","61568bf2311e5406b07fc3f5"],"_id":"6156fee087a84d26aa9cc745","phone":"9878907651","email":"user212@gmail.com","name":"user212"}

class Data {
  User? user;

  Data({
    this.user});

  Data.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

/// userCart : {"cartItems":[{"_id":"615acd634ec3f94c3ebf5898","itemId":"61515f2a8dde0e6b01b6094d","name":"Cheese Pizzaa","quantity":4,"price":4,"customisation":[]}],"noContactDelivery":false}
/// wishlist : ["61541fce548e4b4b6cbdb4c8","61568bf2311e5406b07fc3f5"]
/// _id : "6156fee087a84d26aa9cc745"
/// phone : "9878907651"
/// email : "user212@gmail.com"
/// name : "user212"

class User {
  UserCart? userCart;
  List<String>? wishlist;
  String? id;
  String? phone;
  String? email;
  String? name;
  String? image;

  User({
    this.userCart,
    this.wishlist,
    this.id,
    this.phone,
    this.email,
    this.name});

  User.fromJson(dynamic json) {
    userCart = json['userCart'] != null ? UserCart.fromJson(json['userCart']) : null;
    wishlist = json['wishlist'] != null ? json['wishlist'].cast<String>() : [];
    id = json['_id'];
    phone = json['phone'];
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (userCart != null) {
      map['userCart'] = userCart?.toJson();
    }
    map['wishlist'] = wishlist;
    map['_id'] = id;
    map['phone'] = phone;
    map['email'] = email;
    map['name'] = name;
    return map;
  }

}

/// cartItems : [{"_id":"615acd634ec3f94c3ebf5898","itemId":"61515f2a8dde0e6b01b6094d","name":"Cheese Pizzaa","quantity":4,"price":4,"customisation":[]}]
/// noContactDelivery : false

class UserCart {
  List<CartItems>? cartItems;
  bool? noContactDelivery;

  UserCart({
    this.cartItems,
    this.noContactDelivery});

  UserCart.fromJson(dynamic json) {
    if (json['cartItems'] != null) {
      cartItems = [];
      json['cartItems'].forEach((v) {
        cartItems?.add(CartItems.fromJson(v));
      });
    }
    noContactDelivery = json['noContactDelivery'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (cartItems != null) {
      map['cartItems'] = cartItems?.map((v) => v.toJson()).toList();
    }
    map['noContactDelivery'] = noContactDelivery;
    return map;
  }

}

/// _id : "615acd634ec3f94c3ebf5898"
/// itemId : "61515f2a8dde0e6b01b6094d"
/// name : "Cheese Pizzaa"
/// quantity : 4
/// price : 4
/// customisation : []

class CartItems {
  String? id;
  String? itemId;
  String? name;
  int? quantity;
  num? price;
  List<dynamic>? customisation;

  CartItems({
    this.id,
    this.itemId,
    this.name,
    this.quantity,
    this.price,
    this.customisation});

  CartItems.fromJson(dynamic json) {
    id = json['_id'];
    itemId = json['itemId'];
    name = json['name'];
    quantity = json['quantity'];
    price = json['price'];
    if (json['customisation'] != null) {
      customisation = [];
      json['customisation'].forEach((v) {
        //customisation?.add(dynamic.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['_id'] = id;
    map['itemId'] = itemId;
    map['name'] = name;
    map['quantity'] = quantity;
    map['price'] = price;
    if (customisation != null) {
      //map['customisation'] = customisation?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}