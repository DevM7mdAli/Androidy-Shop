import 'package:androidyshop/constants/assets.dart';

class Product {
  final int price;
  final String id, title, subTitle, type, company, description, image;

  Product(
      {required this.id,
      required this.title,
      required this.subTitle,
      required this.type,
      required this.description,
      required this.company,
      required this.image,
      required this.price});
}

// list of products
List<Product> products = [
  Product(
    id: "SAMPA7",
    price: 120,
    title: "جالاكسي أ7",
    type: "هاتف",
    subTitle: "جودة صوت عالية",
    company: "",
    image: a7,
    description: "هاتف متوسط من سامسونق اصدر سنة 2017",
  ),
  Product(
    id: "SAMPA53",
    price: 400,
    title: "جالاكسي أ53",
    type: "هاتف",
    subTitle: "ملك الهواتف المتوسطة",
    company: "",
    image: a53,
    description: "هاتف متوسط من سامسونق اصدر سنة 2022",
  ),
  Product(
    id: "SAMBFE1",
    price: 100,
    title: "جالاكسي بدز فان ايدشن",
    type: "سماعة",
    subTitle: "صوت عالي",
    company: "",
    image: gbfe,
    description: "سماعه متوسطه من سامسونق",
  ),
  Product(
    id: "SAMBpro1",
    price: 170,
    title: "جالاكسي بدز برو",
    type: "سماعة",
    subTitle: "صوت عالي",
    company: "",
    image: gbpro,
    description: "سماعه فئه عليا من سامسونق",
  ),
  Product(
    id: "SAMW3",
    price: 170,
    title: "جالاكسي واتش 3",
    type: "ساعة",
    subTitle: "اناقة",
    company: "",
    image: gw3,
    description: "ساعه فئه عليا من سامسونق",
  ),
  Product(
    id: "SAMW4",
    price: 170,
    title: "جالاكسي واتش 4",
    type: "ساعة",
    subTitle: "اناقة",
    company: "",
    image: gw4,
    description: "ساعه فئه عليا من سامسونق",
  ),
  Product(
    id: "OP9",
    price: 170,
    title: "ون بلس 9",
    type: "هاتف",
    subTitle: "سرعه",
    company: "",
    image: op9,
    description: "هاتف فئه عليا من ون بلس",
  ),
  Product(
    id: "OP10",
    price: 170,
    title: "ون بلس 10",
    type: "هاتف",
    subTitle: "سرعه",
    company: "",
    image: op10,
    description: "هاتف فئه عليا من ون بلس",
  ),
];
