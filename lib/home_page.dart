import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 112,
          leading: Image.asset(
            'public/images/user.png',
            scale: 4,
          ),
          actions: [
            Image.asset(
              'public/images/search.png',
              scale: 4,
            )
          ],
          backgroundColor: Color.fromRGBO(1, 85, 79, 1),
          title: const Text('Здоровье'),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              height: 40,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ближайшие записи',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text('все',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(124, 124, 124, 1)))
                ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Container(
                padding: EdgeInsets.all(16),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(151, 151, 151, 0.4),
                      offset: Offset(0, 2),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'public/images/ushi.png',
                          scale: 4,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            '3 февраля в 13:30 ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 56.0),
                      child: Text(
                        'Прием (осмотр, консультация) терапевта, первичный',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 56.0),
                      child: Text(
                        'Иванова Юлия Сергеевна',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(124, 124, 124, 1)),
                      ),
                    )
                  ],
                ),
              )),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 34, bottom: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Медицинские сервисы',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text('все',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(124, 124, 124, 1)))
                ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CardWidget(image: 'public/images/card-tag.png'),
                    CardWidget(image: 'public/images/card-tag2.png'),
                    CardWidget(image: 'public/images/card-tag3.png'),
                  ],
                ),
              )),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Лучшие терапевты',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text('все',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(124, 124, 124, 1)))
                ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    TerapevtCard(name: 'Магомедов И. К.', otz: '5.0 (18 отзывов)', image: 'public/images/doctor.png'),
                    TerapevtCard(name: 'Баймурзаев Р. Р.', otz: '5.0 (12 отзывов)', image: 'public/images/doctor2.png'),
                    TerapevtCard(name: 'Синицина Н. М.', otz: '4.9 (10 отзывов)', image: 'public/images/doctor3.png'),
                  ],
                ),
              )),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Персональные предложения',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text('все',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(124, 124, 124, 1)))
                ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PersonProduct(
                      title: 'ПЦР тест за 1300₽',
                      description:
                          'Результат в течении суток на русском и английском языках',
                      image: 'public/images/cardprod.png',
                    ),
                    PersonProduct(
                        image: 'public/images/ber.png',
                        title: 'Ведение беременности',
                        description:
                            'Квалифицированное сопровождение в прекрасный ...'),
                    PersonProduct(
                        image: 'public/images/skid.png',
                        title: 'Скидка 20% на первый прием',
                        description: 'Скидка на консультацию у кате...')
                  ],
                ),
              )),
        ),
      ],
    ));
  }
}

class CardWidget extends StatelessWidget {
  final String image;
  const CardWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 8),
      child: SizedBox(
          width: 124,
          height: 124,
          child: Image.asset(
            image,
            scale: 4,
          )
          // Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   Padding(
          //     padding: EdgeInsets.only(bottom: 8.0),
          //     child: Icon(Icons.abc_outlined),
          //   ),
          //   Text(
          //     'Консультация',
          //   )
          // ]),
          ),
    );
  }
}

class TerapevtCard extends StatelessWidget {
  final String image;
  final String name;
  final String otz;
  const TerapevtCard({super.key, required this.name,  required this.otz, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SizedBox(
        width: 156,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 111,
                child: Image.asset(image),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  Text(
                    ' $otz',
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PersonProduct extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const PersonProduct(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SizedBox(
        width: 194,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 111,
                child: Image.asset(image),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
