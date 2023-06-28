class Catalogue {
  static final items = [
    Item(
      id: 1,
      name: "iphone 14 pro max",
      desc: "Phone for the future",
      price: 999,
      color: "#33505a",
      imageurl:
          "https://m.media-amazon.com/images/I/71yzJoE7WlL._AC_UF1000,1000_QL80_.jpg",
    ),
    Item(
      id: 2,
      name: "Samsung galaxy s22",
      desc: "Phone for the future",
      price: 999,
      color: "#33505a",
      imageurl: "https://cdn1.smartprix.com/rx-iuwYeMkkW-w1200-h1200/uwYeMkkW.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item(
      {this.id = 0,
      this.name = "",
      this.desc = "",
      this.price = 0,
      this.color = "",
      this.imageurl = ""});
}
