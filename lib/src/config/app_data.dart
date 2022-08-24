import 'package:mantodistri/src/models/cart_item_model.dart';
import 'package:mantodistri/src/models/item_models.dart';
import 'package:mantodistri/src/models/order_model.dart';
import 'package:mantodistri/src/models/user_models.dart';

ItemModel skol = ItemModel(
  description: 'Promoção.',
  imgUrl: 'assets/cervejas/skol.png',
  itemName: 'Skol',
  price: 5.5,
  unit: 'un',
);

ItemModel hineken = ItemModel(
    imgUrl: 'assets/cervejas/heineken-original-bottle.png',
    itemName: 'Heineken',
    price: 7.4,
    unit: 'un',
    description: 'Promoção.');

ItemModel budweiser = ItemModel(
    imgUrl: 'assets/cervejas/pngwing.com.png',
    itemName: 'Budweiser',
    price: 11.5,
    unit: 'un',
    description: 'Promoção.');

// ItemModel kiwi = ItemModel(
//   imgUrl: 'assets/fruits/kiwi.png',
//   itemName: 'Kiwi',
//   price: 2.5,
//   unit: 'un',
//   description:
//       'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
// );

// ItemModel mango = ItemModel(
//   imgUrl: 'assets/fruits/mango.png',
//   itemName: 'Manga',
//   price: 2.5,
//   unit: 'un',
//   description:
//       'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
// );

// ItemModel papaya = ItemModel(
//   imgUrl: 'assets/fruits/papaya.png',
//   itemName: 'Mamão papaya',
//   price: 8,
//   unit: 'kg',
//   description:
//       'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
// );

List<ItemModel> items = [
  skol,
  hineken,
  budweiser,
  // kiwi,
  // mango,
  // papaya,
];

List<String> categories = [
  'Cerveja',
  'Carne',
  'Petiscos',
  'Refrigerante',
  'Vodka',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: skol,
    quantity: 2,
  ),
  CartItemModel(
    item: budweiser,
    quantity: 1,
  ),
  // CartItemModel(
  //   item: mango,
  //   quantity: 3,
  // ),
];

UserModel user = UserModel(
  name: 'wesley mantovane',
  email: 'admin@email.com',
  phone: '99 9 9999-9999',
  cpf: '999.999.999.-99',
  password: 'Dierode3301',
);

List<OrderModel> orders = [
  // Pedido 01
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2022-06-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2022-12-08 11:00:10.458',
    ),
    id: 'asd6a54da6s2d1',
    status: 'pending_payment',
    total: 11.0,
    items: [
      CartItemModel(
        item: skol,
        quantity: 2,
      ),
      // CartItemModel(
      //   item: mango,
      //   quantity: 2,
      // ),
      // CartItemModel(
      //   item: papaya,
      //   quantity: 4,
      // ),
    ],
  ),

  // Pedido 02
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2022-06-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2022-12-08 11:00:10.458',
    ),
    id: 'a65s4d6a2s1d6a5s',
    status: 'preparing_purchase',
    total: 11.5,
    items: [
      CartItemModel(
        item: budweiser,
        quantity: 1,
      ),
    ],
  ),
];
