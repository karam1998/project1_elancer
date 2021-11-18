import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecitersScreen extends StatefulWidget {
  const RecitersScreen({Key? key}) : super(key: key);

  @override
  _RecitersScreenState createState() => _RecitersScreenState();
}

class _RecitersScreenState extends State<RecitersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          ' اشهر قراء القرآن الكريم',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoNaskhArabic',
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/main_screen');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          padding: const EdgeInsets.only(left: 7),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      // const Text(
                      //   'Category of Muslims ',
                      //   style: TextStyle(
                      //       fontSize: 25,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.black),
                      // ),
                      SvgPicture.asset('images/Logo.svg'),
                      const SizedBox(
                        height: 20,
                      ),

                      userArea(
                        userName: 'عبدالرحمن السديس',
                        aboutUser:
                            'السديس هو الرئيس العام لشؤون المسجد الحرام والمسجد النبوي وإمام وخطيب بالحرم المكي الشريف. ولد في البكيرية بمنطقة القصيم عام 1379 هـ، وهو من أشهر مرتلي القرآن الكريم في العالم، وتمكن من حفظ القرآن الكريم ولم يكن يبلغ من العمر اثني عشر عامًا.',
                        mainImage: 'images/sodase.jpg',
                        userImage: 'images/sodase.jpg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.facebook),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.youtube),
                                      color: Colors.redAccent,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),

                      userArea(
                        userName: 'ماهر المعيقلي',
                        aboutUser:
                            'ماهر بن حمد بن معيقل المعيقلي البلوي … و قد  ولد الشيخ ماهر المعيقلي في السابع من يناير سنة 1969 ميلاديا … وقد ولد ماهر المعيقلي في المدينة المنورة في المملكة العربية السعودية .لقد حفظ  الشيخ ماهر المعيقلي القرآن الكريم كاملا و هو من أشهر القراء في العالم الإسلامي يتميز الشيخ ماهر المعيقلي بصوت جميل و رائع و اهتم بالقرآن فدرَس قواعده وأحكامه ، و أَحبَّ قراءته كما ينبغي، فصدحت حنجرته بما تيسر من آياته ترتيلا و تجويدا',
                        mainImage: 'images/moaqle2.jpg',
                        userImage: 'images/moaqle.jpg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.facebook),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.youtube),
                                      color: Colors.redAccent,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),

                      userArea(
                        userName: 'مشاري العفاسي',
                        aboutUser:
                            ' إمام المسجد الكبير بدولة الكويت وخطيب في وزارة الأوقاف والشؤون الإسلامية بدولة الكويت، صاحب أول قناة إسلامية كويتية قناة العفاسي الفضائية. وقارئ القرآن الكريم ومنشد ديني كويتي. له العديد من الإصدارات التي انتشرت في الوطن العربي والإسلامي والعالم.',
                        mainImage: 'images/afasy2.jpg',
                        userImage: 'images/afasy.jpg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.facebook),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.youtube),
                                      color: Colors.redAccent,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      userArea(
                        userImage: 'images/Yasser_Al-Dosari.png',
                        userName: 'ياسر الدوسري',
                        aboutUser:
                            'أحد قراء القرآن الكريم في المملكة العربية السعودية ومن أئمة المسجد الحرام اعتباراً من صفر 1441 للهجرة،  وهو مؤسس مجموعة آيات للإعلام القرآني مع الشيخ ناصر القطامي. وهو إمام في المسجد الحرام وتم تعيينه في المسجد الحرام يوم السبت 1441/2/13هـ',
                        mainImage: 'images/Yasser_Al-Dosari.png',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.facebook),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.youtube),
                                      color: Colors.redAccent,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      userArea(
                          userImage: 'images/naser.jpg',
                          aboutUser:
                              'ارئ من قراء القرآن الكريم في المملكة العربية السعودية، وإمام وخطيب جامع عبد الله بن ناصر المهيني بالرياض. ولد في السعودية عام 1980 م 1400 هـ. ويعد من أشهر قراء منطقة الخليج والوطن العربي',
                          mainImage: 'images/naser.jpg',
                          userName: 'ناصر القطامي'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.facebook),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.youtube),
                                      color: Colors.redAccent,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(FontAwesomeIcons.instagram),
                                      color: Colors.pink.shade400,
                                      iconSize: 28),
                                  // SizedBox(height: 3,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget userArea({userName, userImage, aboutUser, mainImage}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(userImage), fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            letterSpacing: .5),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              aboutUser,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                  height: 1,
                  letterSpacing: 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          mainImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(mainImage), fit: BoxFit.cover)),
                )
              : Container(),
          const SizedBox(
            height: 0,
          ),
        ],
      ),
    );
  }


  Widget instagramButton() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.instagram),
              color: Colors.pink.shade400,
              iconSize: 28),
          // SizedBox(height: 3,),
          const Text(
            'instagram',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }


}
