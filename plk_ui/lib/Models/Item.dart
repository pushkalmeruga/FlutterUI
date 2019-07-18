class Item {
  int itemId;
  String itemType;
  String partName;
  String model;
  String description;
  String brand;
  double price;
  int customerId;
  String location;
  DateTime createDate;
  DateTime updateDate;


  List<Item> getItems() {
    List<Item> items = new List<Item>();

    for (int i = 1; i <= 1000; i++) {
      Item item = new Item();
      item.itemId = i;
      item.partName = "EarPhones";
      item.price = 400.0;
      items.add(item);
    }
    return items;
  }
}
