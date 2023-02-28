class Information_page{
  String  productImg;
  String     productName;
  String  color;
  String  country;
  double  price;
  String  description;
  int  id;
  int quantity=1;
  Information_page(this.productImg, this.productName, this.color, this.country,
      this.price, this.description,this.id);
}
List<Information_page> info=[
Information_page( "https://images.pexels.com/photos/2912108/pexels-photo-2912108.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",'San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',1),
Information_page(   "https://c8.alamy.com/comp/BXRBEY/bottle-of-gallo-californian-white-wine-uk-BXRBEY.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',2),
Information_page(   "https://images.pexels.com/photos/917831/pexels-photo-917831.jpeg?cs=srgb&dl=pexels-brett-jordan-917831.jpg&fm=jpg", 'San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',3),
Information_page(   "https://www.thedottedi.in/pub/media/catalog/product/cache/c9e0b0ef589f3508e5ba515cde53c5ff/f/i/first_anniversary_wine_bottle-dottedi.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',4),
Information_page(   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rDoFTDV0vpk5Q9iubCH_AezyfoJSjp5Fbg&usqp=CAU", 'San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',5),
Information_page(   "https://images.unsplash.com/photo-1560148218-1a83060f7b32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdpbmUlMjBib3R0bGV8ZW58MHx8MHx8&w=1000&q=80", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',6),
Information_page(   "https://images.unsplash.com/photo-1557682204-e53b55fd750c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2luZSUyMGJvdHRsZXxlbnwwfHwwfHw%3D&w=1000&q=80", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',7),
Information_page(   "https://images.pexels.com/photos/2912108/pexels-photo-2912108.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',8),
Information_page(   "https://assets.personalwine.com/assets/frontend/examples/redwine_etch_hollyjollychristmas-99913ed608f994148a73e735a79298399ba3d097c70d99dc82017a1a8dd68517.png", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',9),
Information_page(   "https://c8.alamy.com/comp/BXRBEY/bottle-of-gallo-californian-white-wine-uk-BXRBEY.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',10),
Information_page(   "https://images.pexels.com/photos/917831/pexels-photo-917831.jpeg?cs=srgb&dl=pexels-brett-jordan-917831.jpg&fm=jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',11),
Information_page(   "https://www.thedottedi.in/pub/media/catalog/product/cache/c9e0b0ef589f3508e5ba515cde53c5ff/f/i/first_anniversary_wine_bottle-dottedi.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',12),
Information_page(   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rDoFTDV0vpk5Q9iubCH_AezyfoJSjp5Fbg&usqp=CAU", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',13),
Information_page( "https://images.pexels.com/photos/2912108/pexels-photo-2912108.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',14),
Information_page(   "https://c8.alamy.com/comp/BXRBEY/bottle-of-gallo-californian-white-wine-uk-BXRBEY.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',15),
Information_page(   "https://images.pexels.com/photos/917831/pexels-photo-917831.jpeg?cs=srgb&dl=pexels-brett-jordan-917831.jpg&fm=jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',16),
Information_page(   "https://www.thedottedi.in/pub/media/catalog/product/cache/c9e0b0ef589f3508e5ba515cde53c5ff/f/i/first_anniversary_wine_bottle-dottedi.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',17),
Information_page(   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rDoFTDV0vpk5Q9iubCH_AezyfoJSjp5Fbg&usqp=CAU", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',18),
Information_page(   "https://images.unsplash.com/photo-1560148218-1a83060f7b32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdpbmUlMjBib3R0bGV8ZW58MHx8MHx8&w=1000&q=80", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',19),
Information_page(   "https://images.unsplash.com/photo-1557682204-e53b55fd750c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2luZSUyMGJvdHRsZXxlbnwwfHwwfHw%3D&w=1000&q=80", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',20),
Information_page(   "https://images.pexels.com/photos/2912108/pexels-photo-2912108.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',21),
Information_page(   "https://assets.personalwine.com/assets/frontend/examples/redwine_etch_hollyjollychristmas-99913ed608f994148a73e735a79298399ba3d097c70d99dc82017a1a8dd68517.png", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',22),
Information_page(   "https://c8.alamy.com/comp/BXRBEY/bottle-of-gallo-californian-white-wine-uk-BXRBEY.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',23),
Information_page(   "https://images.pexels.com/photos/917831/pexels-photo-917831.jpeg?cs=srgb&dl=pexels-brett-jordan-917831.jpg&fm=jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',24),
Information_page(   "https://www.thedottedi.in/pub/media/catalog/product/cache/c9e0b0ef589f3508e5ba515cde53c5ff/f/i/first_anniversary_wine_bottle-dottedi.jpg", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',25),
Information_page(    "https://assets.personalwine.com/assets/frontend/examples/redwine_etch_hollyjollychristmas-99913ed608f994148a73e735a79298399ba3d097c70d99dc82017a1a8dd68517.png", ' San Valentine', "Red Wine", 'Ukrine', 12.8, 'Blended',26,),
];
