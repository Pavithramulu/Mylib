class Latest{

  String? image;
  String? text;

  Latest(this.image,this.text);

}
List latest = tesData.map((e) => Latest(e["image"],e["text"])).toList();

var tesData = [


  {"image":"asset/latest44.jpg","text":"Varisu",},
  {"image":"asset/latest5.jpg","text":"Vathi",},
  {"image":"asset/latest3.jpg","text":"Thunivu",},
  {"image":"asset/latest2.jpg","text":"RRR",},
  {"image":"asset/latest1.jpg","text":"KGF",},




];//

class Trend{

  String? image;
  String? text;

  Trend(this.image,this.text,);

}
List tren = trendingData.map((e) => Trend(e["image"],e["text"])).toList();

var trendingData = [

  {"image":"asset/latest00.jpg","text":"vijay",},
  {"image":"asset/latest11.jpg","text":"Animation",},
  {"image":"asset/latest22.jpg","text":"Surya",},
  {"image":"asset/latest33.jpg","text":"Kavin",},
  {"image":"asset/latest444.jpg","text":"Samantha",},
  {"image":"asset/latest55.jpg","text":"Nayanthara",},



];//

class Sports{

  String? image;
  String? text;

  Sports(this.image,this.text);

}
List sports = sportData.map((e) => Sports(e["image"],e["text"])).toList();


var sportData = [

  {"image":"asset/sports1.jpg","text":"CSK",},
  {"image":"asset/sports2.jpg","text":"FootBall",},
  {"image":"asset/sports3.jpg","text":"FootBall",},
  {"image":"asset/sports4.jpg","text":"FootBall",},
  {"image":"asset/sports5.jpg","text":"FootBall",},



];//

class Serial{

  String? image;
  String? text;

  Serial(this.image,this.text);

}
List serial = seriData.map((e) => Serial(e["image"],e["text"])).toList();


var seriData = [

  {"image":"asset/series7.jpg","text":"All of us are dead "},
  {"image":"asset/series22.jpg","text":"Business Proposal"},
  {"image":"asset/series1.jpg","text":"EAW"},
  {"image":"asset/series66.jpg","text":"25/21"},
  {"image":"asset/series55.jpg","text":"Mighty Little Bheem"},



];//

class Action{

  String? image;
  String? text;

  Action(this.image,this.text);

}
List action = actData.map((e) => Action(e["image"],e["text"])).toList();


var actData = [

  {"image":"asset/action1.jpg","text":"RRR",},
  {"image":"asset/action2.jpg","text":"KGF",},
  {"image":"asset/action3.jpg","text":"KGF",},
  {"image":"asset/action4.jpg","text":"RRR",},
  {"image":"asset/action5.jpg","text":"KGF",},



];//


class Chennal{

  String? image;
  String? text;

  Chennal(this.image,this.text);

}
List chennal = chanData.map((e) => Chennal(e["image"],e["text"])).toList();


var chanData = [

  {"image":"asset/tv1.jpg","text":"Sun TV",},
  {"image":"asset/tv2.jpg","text":"VJ TV",},
  {"image":"asset/tv3.jpg","text":"Vijay TV",},
  {"image":"asset/tv4.jpg","text":"K TV",},
  {"image":"asset/tv5.jpg","text":"ZEE TV",},


];//

class Horor{

  String? image;
  String ? text;

  Horor(this.image,this.text);

}
List horor = horData.map((e) => Horor(e["image"],e["text"])).toList();


var horData = [

  {"image":"asset/horor1.jpg","text":"Evil Dead Rise",},
  {"image":"asset/horor2.jpg","text":"Chapter"},
  {"image":"asset/horor3.jpg","text":"Dark"},
  {"image":"asset/horor4.jpg","text":"Arves"},
  {"image":"asset/horor5.jpg","text":"Darling"},



];//


class Movei{

  String? image;
  String? text;

  Movei(this.image,this.text);

}
List movei = moveData.map((e) => Movei(e["image"],e["text"])).toList();


var moveData = [

  {"image":"asset/movei1.jpg","text":"Sitaram",},
  {"image":"asset/movei2.jpg","text":"Love Today",},
  {"image":"asset/movei3.jpg","text":"Sitaram",},
  {"image":"asset/movei4.jpg","text":"Love Today",},
  {"image":"asset/movei5.jpg","text":"Sitaram",},

];

//

class OTTfrontpage{

  String? image;

  OTTfrontpage(this.image);

}
List OTT = moveData.map((e) => OTTfrontpage(e["image"])).toList();


var OTTData = [

  {"image":"asset/ottfrontpage.jpg"},


];
//

class serial1{

  String? image;

  serial1(this.image);

}
List drama = moveData.map((e) => serial1(e["image"])).toList();


var dramaData = [

  {"image":"asset/ottfrontpage.jpg"},


];





