import 'package:myhr/models/catalog.dart';

// catalog field
class CartModel {
 Catalogue _catalo = Catalogue();


 final List<int> _itemIds =[];// collection of ids
 
 //get id
 Catalogue get catalo => _catalo;
 //set ids
 set catalo(Catalogue newcatalog)
 {
  _catalo = newcatalog;
 }
  //get items in the cart
  List<Item> get items => _itemIds.map((id) => catalo.getById(id)).toList();

  //get total price
  num get totalprice => 
  items.fold(0, (total, current) => total + current.price);
  //add items
  void add(Item item)
  {
    _itemIds.add(item.id);
  }
  void remove(Item item)
  {
    _itemIds.remove(item.id);
  }
}
