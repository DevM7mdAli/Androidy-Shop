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

final List<String> listCompany = ["سامسونق", "ون بلس"];

// list of products
List<Product> products = [
  Product(
    id: "SAMTS9U",
    price: 1000,
    title: "جالاكسي تاب اس 9 ألترا",
    type: "تابلت",
    subTitle: "اقوى تابلت",
    company: listCompany[0],
    image: st9u,
    description:
        "عندما نتحدث عن التكنولوجيا الرائدة والتصميم الأنيق، فإن تابلت سامسونق اس 9 ألترا يأتي في طليعة الأجهزة التي تجمع بين الأداء القوي والجمال الفائق. هذا الجهاز ليس مجرد تابلت عادي، بل هو تحفة تقنية تدمج بين القوة والذكاء، ليصبح رفيقًا مثاليًا لكل من يبحث عن تجربة استخدام استثنائية. \nأول ما يجذب الأنظار في سامسونق اس 9 ألترا هو شاشته المذهلة ذات القياس الكبير، والتي توفر ألوانًا غنية وتفاصيل حادة بفضل دقتها العالية وتقنية AMOLED المتطورة. هذا يجعل مشاهدة الفيديوهات، وتصفح الصور، وحتى القراءة تجربة لا تضاهى من حيث الجودة والوضوح.",
  ),
  Product(
    id: "SAMPA7",
    price: 120,
    title: "جالاكسي أ7",
    type: "هاتف",
    subTitle: "جودة صوت عالية",
    company: listCompany[0],
    image: a7,
    description: "هاتف متوسط من سامسونق اصدر سنة 2017",
  ),
  Product(
    id: "SAMPA53",
    price: 400,
    title: "جالاكسي أ53",
    type: "هاتف",
    subTitle: "ملك الهواتف المتوسطة",
    company: listCompany[0],
    image: a53,
    description: "هاتف متوسط من سامسونق اصدر سنة 2022",
  ),
  Product(
    id: "SAMBFE1",
    price: 100,
    title: "جالاكسي بدز فان ايدشن",
    type: "سماعة",
    subTitle: "صوت عالي",
    company: listCompany[0],
    image: gbfe,
    description: "سماعه متوسطه من سامسونق",
  ),
  Product(
    id: "SAMBpro1",
    price: 170,
    title: "جالاكسي بدز برو",
    type: "سماعة",
    subTitle: "صوت عالي",
    company: listCompany[0],
    image: gbpro,
    description: "سماعه فئه عليا من سامسونق",
  ),
  Product(
    id: "SAMW3",
    price: 170,
    title: "جالاكسي واتش 3",
    type: "ساعة",
    subTitle: "اناقة",
    company: listCompany[0],
    image: gw3,
    description: "ساعه فئه عليا من سامسونق",
  ),
  Product(
    id: "SAMW4",
    price: 170,
    title: "جالاكسي واتش 4",
    type: "ساعة",
    subTitle: "اناقة",
    company: listCompany[0],
    image: gw4,
    description: "ساعه فئه عليا من سامسونق",
  ),
  Product(
    id: "OP9",
    price: 170,
    title: "ون بلس 9",
    type: "هاتف",
    subTitle: "سرعه",
    company: listCompany[1],
    image: op9,
    description: "هاتف فئه عليا من ون بلس",
  ),
  Product(
    id: "OP10",
    price: 170,
    title: "ون بلس 10",
    type: "هاتف",
    subTitle: "سرعه",
    company: listCompany[1],
    image: op10,
    description: "هاتف فئه عليا من ون بلس",
  ),
];
