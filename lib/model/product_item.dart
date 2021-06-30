import 'dart:convert' as convert;
class ProductItem {
  String? advisePrice;
  int? id;
  String? image;
  int? isAlone;
  String? name;
  String? saleKey;
  int? salesVolume;
  int? shelfStatus;
  int? shopId;
  String? shopLogo;
  String? shopName;
  int? showCart;
  int? stock;
  int? type;

  ProductItem({
    this.advisePrice,
    this.id,
    this.image,
    this.isAlone,
    this.name,
    this.saleKey,
    this.salesVolume,
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
      advisePrice: parsedJson['advise_price'],
      id: parsedJson['id'],
      image: convert.jsonDecode(parsedJson['image']).thumbnail,
      isAlone: parsedJson['is_alone'],
      name: parsedJson['name'],
      saleKey: parsedJson['sale_key'],
      salesVolume: parsedJson['sales_volume'],
      shopId: parsedJson['shop_id'],
      shopLogo: parsedJson['shop_logo'],
      shopName: parsedJson['shop_name'],
      showCart: parsedJson['show_cart'],
      stock: parsedJson['stock'],
      type: parsedJson['type']
    );
  }
}
