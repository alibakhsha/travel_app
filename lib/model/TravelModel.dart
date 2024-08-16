class Travelmodel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;

  Travelmodel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.discription,
    required this.price,
  });
}

List<Travelmodel> travelList = [
  //NY
  Travelmodel(
      name: "New York",
      location: "US - New York",
      image: "assets/images/newyork.jpg",
      distance: "778.2KM",
      temp: "14",
      rating: "4.5",
      discription:
          "In late September 1940 he boarded a passenger liner in Liverpool, England. After a tense, exhausting 10-day crossing, the ship docked in New York.Mondrians good friend Harry Holtzman took him under his wing and he quickly found his feet in the buzzing city. He became a member of the American Abstract Artists group and part of the New York art scene. But Mondrian was happiest working in his studio exploring new means of expression in his painting inspired by the city.",
      price: "5000"),
      //miami
      Travelmodel(
      name: "Miami",
      location: "US - Miami",
      image: "assets/images/miami.jpg",
      distance: "79KM",
      temp: "20",
      rating: "5",
      discription:
          "Miami is one of the state's  and the worlds  most popular vacation spots. Though destinations often are said to offer something for everyone, the Miami area does indeed offer multiple enticements for all:The trendy nightlife of South Beach, bejeweled by the eye candy of the Art Deco district.The bustle of Calle Ocho and the highly caffeinated energy of Little Havana.The plush hotels of Miami Beach and the historic hideaways of Coral Gables.Seemingly endless shopping opportunities in modern, sprawling malls and the quiet, personal attention offered by the family-owned shops of Coconut Grove and many other corners of the region.",
      price: "12000"),
      // DC
      Travelmodel(
      name: "Washington DC",
      location: "US - Washington DC",
      image: "assets/images/washDC.jpg",
      distance: "1500KM",
      temp: "30",
      rating: "2.5",
      discription:
          "Washington, constituent state of the United States of America. Lying at the northwestern corner of the 48 conterminous states, it is bounded by the Canadian province of British Columbia to the north, the U.S. states of Idaho to the east and Oregon to the south, and the Pacific Ocean to the west.",
      price: "15060"),
      // LA
      Travelmodel(
      name: "LosAngles",
      location: "US - LosAngles",
      image: "assets/images/LA.jpg",
      distance: "160KM",
      temp: "23",
      rating: "1.2",
      discription:
          "Los Angeles is a very large city, and the edges of the city are very far from the center, going from the beaches to the mountains. The Santa Monica Mountains run through the city, separating it into the San Fernando Valley to the north and the Los Angeles Basin to the south.",
      price: "13478")
];
