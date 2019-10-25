class BeachesModel {
  String title;
  String desc;
  String img;
  bool isActive;

  BeachesModel({
    this.title,
    this.desc,
    this.img,
    this.isActive
  });

}

List<BeachesModel> beaches = [

   BeachesModel(
    title: "Simply dummy",
    desc: "text of the printing",
    img: "assets/images/img_1.jpg",
    isActive: false
  ),
  BeachesModel(
    title: "Lorem Ipsum",
    desc: "Contrary to popular belief",
    img: "assets/images/img_2.jpg",
    isActive: true
  ),
  BeachesModel(
    title: "What is Lorem",
    desc: "Contrary to popular belief",
    img: "assets/images/img_3.jpg",
    isActive: true
  ),
  BeachesModel(
    title: "Where does it",
    desc: "Contrary to popular belief",
    img: "assets/images/img_4.jpg",
    isActive: false
  )

];