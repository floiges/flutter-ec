import 'dart:convert' as convert;
class ProductItem {
  String sellingPrice;
  String underlinedPrice;
  int? id;
  String? image;
  int? isAlone;
  String name;
  String? saleKey;
  int salesVolume;
  int? shelfStatus;
  int? shopId;
  String? shopLogo;
  String? shopName;
  int? showCart;
  int? stock;
  int? type;

  ProductItem({
    this.sellingPrice = '',
    this.underlinedPrice = '',
    this.id,
    this.image,
    this.isAlone,
    this.name = '',
    this.saleKey,
    this.salesVolume = 0,
    this.shelfStatus,
    this.shopId,
    this.shopLogo,
    this.shopName,
    this.showCart,
    this.stock,
    this.type
  });

  // JSON 解析工厂方法
  factory ProductItem.fromJson(Map<String, dynamic> parsedJson) {
    return ProductItem(
      sellingPrice: parsedJson['selling_price'],
      underlinedPrice: parsedJson['underlined_price'],
      id: parsedJson['id'],
      image: convert.jsonDecode(parsedJson['image'])['thumbnail'],
      isAlone: parsedJson['is_alone'],
      name: parsedJson['name'],
      saleKey: parsedJson['sale_key'],
      salesVolume: parsedJson['volume'],
      shopId: parsedJson['shop_id'],
      shopLogo: parsedJson['shop_logo'],
      shopName: parsedJson['shop_name'],
      showCart: parsedJson['show_cart'],
      stock: parsedJson['stock'],
      type: parsedJson['type']
    );
  }
}
