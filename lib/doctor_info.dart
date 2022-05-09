import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorInfo extends StatelessWidget {
  DoctorInfo({Key? key}) : super(key: key);

  List<Widget> chips = [
    const SizedBox(
      width: 8,
    ),
    const Chip(
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.grey),
      ),
      label: Text('Wadnaha'),
    ),
    const SizedBox(
      width: 8,
    ),
    const Chip(
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.grey),
      ),
      label: Text('Ilkaha'),
    ),
    const SizedBox(
      width: 8,
    ),
    const Chip(
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.grey),
      ),
      label: Text('Qaliimada'),
    ),
    const SizedBox(
      width: 8,
    ),
    const Chip(
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.grey),
      ),
      label: Text('Wadnaha'),
    ),
    const SizedBox(
      width: 8,
    ),
    const Chip(
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.grey),
      ),
      label: Text('Wadnaha'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Doctor Info',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).cardColor,
      ),
      body: ListView(
        children: [
          DoctorInfoCard(size: size),
          DoctorExpInfo(size: size),
          Container(
            margin: const EdgeInsets.all(12),
            child: const Text(
              'Biography',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: const Text(
              'Specialization',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [...chips],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(12),
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.pink),
          onPressed: () {},
          child: const Text('Book Now'),
        ),
      ),
    );
  }
}

class DoctorExpInfo extends StatelessWidget {
  const DoctorExpInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      width: double.infinity,
      height: size.height * 0.1 + 10,
      decoration: DottedDecoration(
        shape: Shape.box,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Info(title: '12', body: 'Patients'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: '6',
                  style: TextStyle(color: Colors.pink, fontSize: 26),
                  children: [
                    TextSpan(
                        text: ' Year',
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text('Experience')
            ],
          ),
          const Info(title: '12', body: 'Certficates'),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(body)
      ],
    );
  }
}

class DoctorInfoCard extends StatelessWidget {
  const DoctorInfoCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      width: double.infinity,
      height: size.height * 0.2 + 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                child: Image.asset(
                  'images/tiger.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 8),
                      child: const Text(
                        'Ahmed mohamed abdikadir',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 8),
                      child: Row(
                        children: const [
                          Icon(
                            CupertinoIcons.clock,
                            size: 20,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              '07:08AM - 09:30PM ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 8),
                      child: Row(
                        children: const [
                          Icon(
                            CupertinoIcons.home,
                            size: 20,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              'Digfeer Hospital',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8, top: 12),
                      child: Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: const Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: const Icon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            child: const Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
