import 'package:flutter/material.dart';
import 'package:orange_kicks_mnl/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Jordan 1 HIGH OG "Satin Bred"',
      price: '172',
      imagePath: 'images/1.png',
      description:
          'A classic shoe is reimagined with a satiny sheen and iconic colors that make it a perfect addition to your wardrobe.',
    ),
    Shoe(
      name: 'Nike Air Max SYSTM',
      price: '76',
      imagePath: 'images/2.png',
      description:
          'Max\'s style, Max\'s comfort. The Air Max SYSTM brings back all the popular elements of the \'80s.',
    ),
    Shoe(
      name: 'Nike V2K Run',
      price: '85',
      imagePath: 'images/3.png',
      description:
          'Cutting-edge design. Retro design. Shoes that have two charms. The V2K recreates all the popular elements of the Vomero, creating a design that looks like it came straight out of an early 2000s running shoe catalog.',
    ),
    Shoe(
      name: 'Stan Smith x KSENIASCHNAIDER',
      price: '98',
      imagePath: 'images/4.png',
      description:
          'Their smooth leather upper, perforated with the iconic 3-Stripes, nods to adidas heritage while feeling fresh. ',
    ),
    Shoe(
      name: 'Campus 2.0 KORN',
      price: '120',
      imagePath: 'images/5.png',
      description:
          'The vintage style with high-quality suede on the upper and classic silhouette create a retro and cool mood that is synonymous with this sneaker.',
    ),
    Shoe(
      name: 'Bad Bunny Last Campus',
      price: '155',
      imagePath: 'images/6.png',
      description:
          'A classic Adidas masterpiece is evolved, drawing inspiration from Benito\'s signature brown mask and the cowboy and western illustrations on his latest album cover.',
    ),
    Shoe(
      name: 'Star Player 76 Premium Canvas',
      price: '69',
      imagePath: 'images/8.png',
      description:
          '(Re)Introducing the Star Player 76. Rooted in sport, reborn for the streets. ',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
