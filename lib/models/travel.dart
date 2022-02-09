class Travel{
  String name;
  String location;
  String url;
  Travel(this.name,this.location,this.url);
  static List<Travel>generateTravelBlog(){
    return[
      Travel('Place1','Place1','images/pic.png.jpg'),
      Travel('Place2','Place2','images/pic.png.jpg'),
      Travel('Place3','Place3','images/pic.png.jpg'),
      Travel('Place4','Place4','images/pic.png.jpg'),
    ];
  }
  static List<Travel>mostPopular(){
    return[
      Travel('Place1','Place1','images/pic.png.jpg'),
      Travel('Place2','Place2','images/pic.png.jpg'),
      Travel('Place3','Place3','images/pic.png.jpg'),
      Travel('Place4','Place4','images/pic.png.jpg'),
    ];
  }
}