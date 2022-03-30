class Restaurant{
  String name,img,time,location,menu,detail;
  int cost;
  Restaurant(this.name,this.img,this.time,this.cost,this.location,this.menu,this.detail);


}

List<Restaurant> restaurants = [
  Restaurant('Bare Voyagers','assets/images/r1.jpg','5:30 am',30,'San Mateo','Chowder,Hot dogs','・Home Delivery¥n・Serves Alcohol'),
  Restaurant('The Luscious Flame','assets/images/r2.jpg','8:00 pm',14,'San Mateo','Hot dogs','・Kid Friendly¥n・Serves Alcohol'),
  Restaurant('Weeping of Children','assets/images/r3.jpg','11:30 am',29,'San Mateo','Hamburger,Hot dogs','・Take away available¥n・Vegetarian Friendly'),
  Restaurant('The Doors Way','assets/images/r4.jpg','5:30 am',3,'San Mateo','Sushi','・Home Delivery¥n・Serves Alcohol'),
];