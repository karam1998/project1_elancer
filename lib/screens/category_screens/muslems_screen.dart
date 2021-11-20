import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MuslemScreen extends StatefulWidget {
  const MuslemScreen({Key? key}) : super(key: key);

  @override
  _MuslemScreenState createState() => _MuslemScreenState();
}

class _MuslemScreenState extends State<MuslemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          ' الدعاه',
          style: TextStyle(
              color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
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
                  padding: const EdgeInsets.all(18),
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
                        userName: 'أ.د.أحمد عيسى المعصراوي',
                        aboutUser:
                            'الشيخ أحمد عيسى حسن المعصراوي، شيخ عموم المقارئ المصرية السابق.',
                        mainImage: 'images/ahmedMasarawe.jpg',
                        userImage: 'images/ahmedMasarawe.jpg',
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/elmasrw1")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/elmasrw")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/channel/UCszBO4J7l4d0YtmVuod3hLA")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/drelmasrwy/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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
                      userArea(
                        userName: 'محمد راتب النابلسي',
                        aboutUser:
                            'داعية سوري، معاصر، له دروس ومحاضرات في الإعجاز العلمي والتفسير، والمنهج العلمي والمعرفة، اشتهر بسلسلته عن أسماء الله الحسنى، وعن الشمائل النبوية. وهو رئيس هيئة الإعجاز القرآني',
                        mainImage: 'images/Ratib_Al-Nabulsi.jpg',
                        userImage: 'images/Ratib_Al-Nabulsi.jpg',
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/nafahathwatr/")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/nabulsi_com")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/channel/UCvwDvEh9i7Ge8bs_tw6nrrA")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/nabulsiweb.ar/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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

                      userArea(
                        userName: 'محمد بن إبراهيم العوضي',
                        aboutUser:
                            'داعية ومفكر إسلامي (ولد في 1959، الكويت) نشط في مجال تعزيز الأخلاق ونشر الدين الإسلامي وخصوصاً لدى الشباب.',
                        mainImage: 'images/Mohammed_Al-Awadi.jpg',
                        userImage: 'images/Mohammed_Al-Awadi.jpg',
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/mh.awadii/")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/mh_awadi?s=09")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/channel/UCoe3L9FHfyfopeIBLkH0uBQ")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/mh.awadi/?igshid=1rkv9ng79pt0f")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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

                      userArea(
                        userName: 'عائض بن عبد الله القرني',
                        aboutUser:
                            ' كاتب وشاعر وداعية إسلامي سعودي. له الكثير من الكتب والخطب والمحاضرات الصوتية والمرئية من دروس ومحاضرات وأمسيات شعرية وندوات أدبية.',
                        mainImage: 'images/Alqarane.png',
                        userImage: 'images/Alqarane.png',
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/dralqarnee")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/Dr_alqarnee")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/user/drqarnee")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/dr_qarnee/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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
                      userArea(
                          userImage: 'images/abdalaRoshdy.jpg',
                          aboutUser:
                              'إمام وخطيب بوزارة الأوقاف المصرية في مسجد السيدة نفيسة ومهتم بمقارنة الأديان والمذاهب ومقدم برامج تلفزيونية حيث قام بتقديم برنامج "القول الفصل" ',
                          mainImage: 'images/abdalaRoshdy.jpg',
                          userName: 'عبدالله رشدي'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/abdullahrushdy/")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/abdullahrushdy")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/c/abdullahrushdy")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/abdullahrushdy/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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
                      userArea(
                          userImage: 'images/omar_abdelkafi.jpg',
                          aboutUser:
                              ' داعية إسلامي. وخريج كلية الزراعة اهتم بالإعجاز العلمي في القرآن واللغة العربية وأحاديث الدار الآخرة. ',
                          mainImage: 'images/omar_abdelkafi.jpg',
                          userName: 'عمر عبد الكافي'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/Dr.abdelkafy.omar")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/drabdelkafyomar?lang=ar")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/c/abdelkafytubeOfficialChannel_LecturesAndTvshows")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/omarabdelkafy/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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
                      userArea(
                          userImage: 'images/laham.jpg',
                          aboutUser: '',
                          mainImage: 'images/laham.jpg',
                          userName: 'الشيخ حسني لحام'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/alnoormosq/?ref=page_internal")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/channel/UCpC-KiXrG1bzWhCQV_VW_XQ")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/hosnilaham/?fbclid=IwAR0kxtJgOVrMDukrdbIWu3l8DQ5dNr-codMvXo3zuUk6Qzomm6b9Ddw28XU")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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
                      userArea(
                          userImage: 'images/Ahmed_el_Tayeb.jpg',
                          aboutUser:
                              ' الإمام الأكبر شيخ الجامع الأزهر (الإمام الثامن والأربعون ) منذ 19 مارس 2010. والرئيس السابق لجامعة الأزهر، ورئيس مجلس حكماء المسلمين، وهو أستاذ في العقيدة الإسلامية',
                          mainImage: 'images/Ahmed_el_Tayeb.jpg',
                          userName: 'أحمد الطيب'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/GrandImam")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/alimamaltayeb?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/channel/UC1qJ_59mfZG82MUY_9GBA4A")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/alimamaltayeb/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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
                      userArea(
                          userImage: 'images/Dr_Zakir_Naik.jpg',
                          aboutUser:
                              ' هو داعية إسلامي وواعظ إسلامي هندي ومؤسس ورئيس مؤسسة البحوث الإسلامية (IRF). وهو أيضًا مؤسس قناة السلام. وقد تم اعتباره "سلطة في مجال مقارنة الأديان"،',
                          mainImage: 'images/Dr_Zakir_Naik.jpg',
                          userName: 'ذاكر عبد الكريم نايك'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/zakirnaik/")
                                          },
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://twitter.com/drzakiranaik")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.twitter),
                                      color: Colors.blue,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.youtube.com/user/drzakirchannel")
                                          },
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.instagram.com/zakirnaikpersonal/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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
                  letterSpacing: 1,
                  fontFamily: 'NotoNaskhArabic'),
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
                          image: AssetImage(mainImage), fit: BoxFit.contain)),
                )
              : Container(),
          const SizedBox(
            height: 0,
          ),
        ],
      ),
    );
  }
}
