// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
          ),
          headline2: TextStyle(
            color: Color.fromARGB(255, 120, 202, 222),
            fontSize: 19.0,
            fontWeight: FontWeight.w500,
          ),
          headline3: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
          headline4: TextStyle(
            color: Colors.white,
            fontSize: 26.0,
            fontWeight: FontWeight.w400,
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CityInfo> city = [
    CityInfo(
        name: 'Nasir al-Mulk',
        location: 'Shiraz, Iran',
        image: 'shiraz-1.jpg',
        distance: '10 km',
        temp: '15 C',
        rating: '4.9',
        description:
            'The Nasir al-Mulk Mosque (Persian: مسجد نصیر الملک Masjed-e Nasir ol-Molk), also known as the Pink Mosque (مسجد صورتی Masjed-e Surati), is a traditional mosque in Shiraz, Iran. It is located near Shāh Chérāgh Mosque. It was built during Qajar dynasty rule of Iran.',
        price: '165'),
    CityInfo(
        name: 'Persepolis',
        location: 'Shiraz, Iran',
        image: 'shiraz-2.jpg',
        distance: '50 km',
        temp: '15 C',
        rating: '4.9',
        description:
            'Persepolis (/pərˈsɛpəlɪs/; Old Persian: 𐎱𐎠𐎼𐎿, Pārsa; New Persian: تخت جمشید, romanized: Takht-e Jamshīd, lit. Throne of Jamshid) was the ceremonial capital of the Achaemenid Empire (c. 550–330 BC). It is situated in the plains of Marvdasht, encircled by southern Zagros mountains of Iran.',
        price: '100'),
    CityInfo(
        name: 'Eram Garden',
        location: 'Shiraz, Iran',
        image: 'shiraz-3.jpg',
        distance: '30 km',
        temp: '15 C',
        rating: '4.9',
        description:
            'Eram Garden (Persian: باغ ارم, Bāgh-e Eram) is a historic Persian garden in Shiraz, Iran. The garden, and the building within it, are located at the northern shore of the Khoshk River in the Fars province.',
        price: '140'),
    CityInfo(
        name: 'Hafezieh',
        location: 'Shiraz, Iran',
        image: 'shiraz-4.jpg',
        distance: '15 km',
        temp: '15 C',
        rating: '4.9',
        description:
            'The Tomb of Hafez (Persian: آرامگاه حافظ), commonly known as Hāfezieh (حافظیه), are two memorial structures erected in the northern edge of Shiraz, Iran, in memory of the celebrated Persian poet Hafez.',
        price: '120'),
  ];
  int cityIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              //height: 360.0,
              child: Container(
                width: double.infinity,
                //height: 350.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0)),
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/${city[cityIndex].image!}'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //top buttons
                      Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.back),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.heart),
                            ),
                          ),
                        ],
                      ),
                      //iamges
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //main image
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(city[cityIndex].name!,
                                  style: Theme.of(context).textTheme.headline4),
                              Row(
                                children: [
                                  const Icon(CupertinoIcons.location_solid,
                                      color: Colors.white),
                                  Text(city[cityIndex].location!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5),
                                ],
                              ),
                            ],
                          ),
                          //image list
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 75.0,
                                height: 300.0,
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: city.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ImageListItem(
                                      imageName:
                                          'assets/images/${city[index].image!}',
                                      onPress: () {
                                        setState(() {
                                          cityIndex = index;
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //content
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InfoBox(
                          title: 'Distance', value: city[cityIndex].distance!),
                      InfoBox(title: 'Temp', value: city[cityIndex].temp!),
                      InfoBox(title: 'Raing', value: city[cityIndex].rating!),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Text('Description',
                      style: Theme.of(context).textTheme.bodyText1),
                  Text(city[cityIndex].description!,
                      style: Theme.of(context).textTheme.bodyText2),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Total Price',
                              style: Theme.of(context).textTheme.bodyText2),
                          Text('\$ ${city[cityIndex].price!}',
                              style: Theme.of(context).textTheme.headline3),
                        ],
                      ),
                      TextButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(80.0, 80.0)),
                          elevation: MaterialStateProperty.all(0.0),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0))),
                        ),
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.right_chevron),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageListItem extends StatelessWidget {
  const ImageListItem({
    required this.imageName,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  final String imageName;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          width: 75.0,
          height: 75.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5.0),
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: AssetImage(imageName),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(''),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.0,
      height: 85.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(26.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 8.0),
          Text(value, style: Theme.of(context).textTheme.headline2),
        ],
      ),
    );
  }
}

class CityInfo {
  String? name;
  String? location;
  String? image;
  String? distance;
  String? temp;
  String? rating;
  String? description;
  String? price;

  CityInfo({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.price,
  });
}
