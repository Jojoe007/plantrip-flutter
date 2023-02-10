import 'package:plantrip/models/Attraction.dart';
import 'package:plantrip/models/AttractionCategory.dart';

class TESTDATA {
  static const List<Attraction> TRAVELDATA = [
    Attraction(
        id: 4,
        title: 'M.O.C.A Muesuem',
        des: 'บางเขน, กรุงเทพ',
        image: 'https://www.traveldb.me/wp-content/uploads/2020/10/MOCA.jpg',
        lat: 13.881101,
        lng: 100.555425),
    Attraction(
        id: 2,
        title: 'Korat',
        des: '',
        image:
            'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3?w=360',
        lat: 13.867727,
        lng: 100.470552),
    Attraction(
        id: 1,
        title: 'Bangkok',
        des: '',
        image:
            'https://images.pexels.com/photos/1037890/pexels-photo-1037890.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        lat: 13.867727,
        lng: 100.470552),
    Attraction(
        id: 3,
        title: 'Yala',
        des: 'ยะลา',
        image:
            'https://yala.prd.go.th/th/file/get/file/20210429bddd0321c0e51080c89d7856e05ebf61160525.jpg',
        lat: 13.867727,
        lng: 100.470552),
    Attraction(
        id: 5,
        title: 'Bardenburg',
        des: '[], Germany',
        image: 'https://mahidol.ac.th/temp/2018/09/009-2-1.jpg',
        lat: 13.781101,
        lng: 100.525425),
    Attraction(
        id: 6,
        title: 'Mahidol University',
        des: 'บางเขน, กรุงเทพ',
        image: 'https://mahidol.ac.th/temp/2018/09/009-2-1.jpg',
        lat: 13.881101,
        lng: 100.575425),
    Attraction(
        id: 7,
        title: 'Mahidol University',
        des: 'บางเขน, กรุงเทพ',
        image: 'https://mahidol.ac.th/temp/2018/09/009-2-1.jpg',
        lat: 13.881101,
        lng: 100.555425),
    Attraction(
        id: 8,
        title: 'Mahidol University',
        des: 'บางเขน, กรุงเทพ',
        image: 'https://mahidol.ac.th/temp/2018/09/009-2-1.jpg',
        lat: 13.881101,
        lng: 100.555425),
    Attraction(
        id: 9,
        title: 'Mahidol University',
        des: 'บางเขน, กรุงเทพ',
        image: 'https://mahidol.ac.th/temp/2018/09/009-2-1.jpg',
        lat: 13.841101,
        lng: 100.555425),
  ];

  static List<AttractionCategory> ATT_CATEGORIES = const [
    AttractionCategory(title: "Landmark"),
    AttractionCategory(title: "ร้านอาหาร"),
    AttractionCategory(title: "โรงแรม"),
    AttractionCategory(title: "Cafe"),
    AttractionCategory(title: "อุธยาน"),
    AttractionCategory(title: "ร้านขายของฝาก"),
  ];

  static late List<Attraction> TRAVELSAVED = [];
}
