import 'package:nike/Models/advertisement.dart';
import 'package:nike/Models/comment.dart';

import '../Models/product.dart';
import '../Models/user.dart';
import '../Models/category.dart';

class FakeData {
  // fake user data
  static String userAvatar = "https://www.facebook.com/photo/?fbid=3393454910874431&set=a.1380742055479070";
  static String avatarIllustration = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI_xsOsL-LdG3gdKQ51EVDthcUoP0PqYp3qQ&s";
  static List<String> imageAd = [
    "https://poweradspy.com/wp-content/uploads/2023/10/Nike-ads-techniques.webp",
    "https://onecms-res.cloudinary.com/image/upload/s---IgjrKp3--/f_auto,q_auto/c_fill,g_auto,h_622,w_830/v1/tdy-migration/19778571_0.JPG?itok=G6JiAGuS",
    "https://i.pinimg.com/originals/6a/d4/d6/6ad4d6c69ca3cfe34e66caff1ecfb6de.jpg",
    "https://filestage.io/wp-content/uploads/2023/02/image-1.webp",
    "https://c.files.bbci.co.uk/44CF/production/_117751671_satan-shoes1.jpg",
  ];
  static User systemUser = User(
    name: "Nguyen Dat Khuong",
    account: "zzkhngzz@gmail.com",
    password: "1123",
    imgURL: avatarIllustration,
  );

  //category
  static Category tops = Category(
      name: "Tops & T-Shirts",
      imageURL: "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/22184e4c-58a6-404d-8c95-c40ffcedb33a/AS+W+NSW+TEE+ESSNTL+GCEL.png"
  );

  static Category shoes = Category(
      name: "Tops & T-Shirts",
      imageURL: "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i4jPhKEFw1NE/v0/1200x857.jpg"
  );

  static Category bottoms = Category(
      name: "Tops & T-Shirts",
      imageURL: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/qy2lafg5t5c7mmokwops/fear-of-god-mens-pants-WC4l2p.png"
  );

  static Category socks = Category(
      name: "Tops & T-Shirts",
      imageURL: "https://product.hstatic.net/1000008082/product/511_19b5d3a27b354329aa0e9e9d0a1aec62.jpeg"
  );

  static Category newArrivals = Category(
      name: "Tops & T-Shirts",
      imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMne_HrHNXgPX9Eg5iquPq-aJ_ka06_Gg_zw&s"
  );

  static Category bestSellers = Category(
      name: "Tops & T-Shirts",
      imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRKleYKi14Dw9PhGnZOAW5ZhpEMcsBDHTpjQ&s"
  );

  static Category mustHaves = Category(
      name: "Tops & T-Shirts",
      imageURL: "https://image.adsoftheworld.com/h9jamkn2d6d8c3kgb2vb8ierfne3"
  );

  static List<Category> specialCategories = [mustHaves, newArrivals, bestSellers];

  //product
  static Product shoe1 = Product(
  name: 'Jordan 1',
  price: 199.99,
  category: shoes,
  productDetails: 'A classic high-top sneaker from Nike, known for its iconic design and comfort.',
  size: '10', // Example size
  images: [
    'https://ir.ebaystatic.com/pictures/aw/pics/sneakers/s_l640_bbb508692f.png',
    'https://authentic-shoes.com/wp-content/uploads/2023/04/567948_01.jpg_b603f1b5b72e4952a71abf1fdd257811.png',
    'https://cdn.authentic-shoes.com/wp-content/uploads/2023/04/36d49d07378d2e8d7dff0d1f1ad9b2c1f9ae7242-1100x735_7ae7358bdea5460aa699681609680c89.jpg',
    'https://product.hstatic.net/200000456445/product/ty.vn_giay-nam-nike-air-jordan-1-retro-high-og-dark-mocha-555088-105_1_6425c71327fb454c8a9c42b3d864b74e_master.png',
    'https://static.nike.com/a/images/w_1536,c_limit,f_auto/3e7c19ab-94f6-4669-9b71-307fe56fc8fb/air-jordan-1-dark-mocha-release-date.jpg',
    'https://static.nike.com/a/images/w_1536,c_limit,f_auto/19d5faed-78cc-4c63-9df0-7d10e4c01e22/air-jordan-1-dark-mocha-release-date.jpg'
  ],
);
  static List<Product> shoeList = [shoe1,shoe1,shoe1,shoe1,shoe1];
  
  static Comment comment1 = Comment(user: systemUser, commentContent: "Wow", commentTime: DateTime.now());
  static Comment comment2 = Comment(user: systemUser, commentContent: "😭", commentTime: DateTime.now());
  static Comment comment3 = Comment(user: systemUser, commentContent: "That is shit", commentTime: DateTime.now());
  static Comment comment4 = Comment(user: systemUser, commentContent: "Hoke me up with a head band", commentTime: DateTime.now());
  static Comment comment5 = Comment(user: systemUser, commentContent: "That dope", commentTime: DateTime.now());
  static Comment comment6 = Comment(user: systemUser, commentContent: "Wow", commentTime: DateTime.now());
  static Comment comment7 = Comment(user: systemUser, commentContent: "Wow", commentTime: DateTime.now());
  static Comment comment8 = Comment(user: systemUser, commentContent: "Wow", commentTime: DateTime.now());
  static Comment comment9 = Comment(user: systemUser, commentContent: "Wow", commentTime: DateTime.now());

  static List<Comment> commentList = [comment1,comment2,comment3,comment4,comment5,comment6,comment7,comment8,comment9];


  static Advertisement advertisement1 = Advertisement(name: "Soyeon's Dance Challenge 😎",adContent: "Hip hop dancer Soyeon Jang shows us an epic dance challenge in the latest Playlist episode. Soyeon dances three parts of the routine - first fast, then slow. Then she combines all the moves for an awesome dance party with her buddy, Disco Dancer. Kids will get inspired to dance along and make up a dance routine of their own.", imgList: imageAd, comments: commentList);

  static Advertisement newAd = Advertisement(name: "New & Featured",adContent: "Hip hop dancer Soyeon Jang shows us an epic dance challenge in the latest Playlist episode. Soyeon dances three parts of the routine - first fast, then slow. Then she combines all the moves for an awesome dance party with her buddy, Disco Dancer. Kids will get inspired to dance along and make up a dance routine of their own.", imgList: imageAd, comments: commentList);

  static List<Advertisement> collectionAds = [newAd, newAd, newAd];
}
