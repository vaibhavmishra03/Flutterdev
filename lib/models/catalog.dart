// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

//import 'package:flutter/foundation.dart';
// import 'dart:convert';
// import 'package:flutter/services.dart';

class Catalogue {
   static  List<Item> items = [];
   //get item by id
   static Item getById(int id) => items.firstWhere((element) => element.id == id, );

   //get by position
   static Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item({
    this.id = 0,
    this.name = "",
    this.desc = "",
    this.price = 0,
    this.color = "",
    this.imageurl = ""
  });

  // factory Item.fromMap(Map<String, dynamic> map) {
  //   //map encoding ...... key---->string
  //   return Item(
  //     id: map["id"],
  //     name: map["name"],
  //     desc: map["desc"],
  //     price: map["price"],
  //     imageurl: map["imageurl"],
  //     color: map["color"],
  //   );
  // }

  // toMap() => {
  //       //string --->key
  //       "id" /*key*/ : id,
  //       "name": name,
  //       "desc": desc,
  //       "price": price,
  //       "color": color,
  //       "imageurl": imageurl,
  //     }; //map encoding

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? imageurl,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      imageurl: imageurl ?? this.imageurl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'imageurl': imageurl,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      imageurl: map['imageurl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, imageurl: $imageurl)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.imageurl == imageurl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      imageurl.hashCode;
  }
}
