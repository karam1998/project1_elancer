import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

        title: const Text(' الدعاه',style: TextStyle(color: Colors.blue,fontSize: 28,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, '/main_screen');
        }, icon: const Icon(Icons.arrow_back_ios,color: Colors.blue,),padding: const EdgeInsets.only(left: 7),),


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
                      SvgPicture.asset('images/Logo.svg' ),
                      const SizedBox(
                        height: 20,
                      ),

                      userArea(
                          userName: 'أ.د.أحمد عيسى المعصراوي',
                          aboutUser: 'الشيخ أحمد عيسى حسن المعصراوي، شيخ عموم المقارئ المصرية السابق.',
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
                      const Divider(thickness: 1,color: Colors.grey,),
                      userArea(
                        userName: 'محمد راتب النابلسي',
                        aboutUser:'داعية سوري، معاصر، له دروس ومحاضرات في الإعجاز العلمي والتفسير، والمنهج العلمي والمعرفة، اشتهر بسلسلته عن أسماء الله الحسنى، وعن الشمائل النبوية. وهو رئيس هيئة الإعجاز القرآني',
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
                      const Divider(thickness: 1,color: Colors.grey,),

                      userArea(
                          userName: 'محمد بن إبراهيم العوضي',
                        aboutUser:'داعية ومفكر إسلامي (ولد في 1959، الكويت) نشط في مجال تعزيز الأخلاق ونشر الدين الإسلامي وخصوصاً لدى الشباب.',
                        mainImage: 'images/Mohammed_Al-Awadi.jpg',
                          userImage: 'images/Mohammed_Al-Awadi.jpg', ),
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

                      const Divider(thickness: 1,color: Colors.grey,),

                      userArea(
                          userName: 'عائض بن عبد الله القرني',
                        aboutUser: ' كاتب وشاعر وداعية إسلامي سعودي. له الكثير من الكتب والخطب والمحاضرات الصوتية والمرئية من دروس ومحاضرات وأمسيات شعرية وندوات أدبية.',
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
                      const Divider(thickness: 1,color: Colors.grey,),
                      userArea(
                        userImage: 'images/abdalaRoshdy.jpg',
                        aboutUser: 'إمام وخطيب بوزارة الأوقاف المصرية في مسجد السيدة نفيسة ومهتم بمقارنة الأديان والمذاهب ومقدم برامج تلفزيونية حيث قام بتقديم برنامج "القول الفصل" ',
                        mainImage: 'images/abdalaRoshdy.jpg',
                        userName: 'عبدالله رشدي'
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
                      const Divider(thickness: 1,color: Colors.grey,),
                      userArea(
                          userImage: 'images/omar_abdelkafi.jpg',
                          aboutUser: ' داعية إسلامي. وخريج كلية الزراعة اهتم بالإعجاز العلمي في القرآن واللغة العربية وأحاديث الدار الآخرة. ',
                          mainImage: 'images/omar_abdelkafi.jpg',
                          userName: 'عمر عبد الكافي'
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
                      const Divider(thickness: 1,color: Colors.grey,),
                      userArea(
                          userImage: 'images/Ahmed_el_Tayeb.jpg',
                          aboutUser: ' الإمام الأكبر شيخ الجامع الأزهر (الإمام الثامن والأربعون ) منذ 19 مارس 2010. والرئيس السابق لجامعة الأزهر، ورئيس مجلس حكماء المسلمين، وهو أستاذ في العقيدة الإسلامية',
                          mainImage: 'images/Ahmed_el_Tayeb.jpg',
                          userName: 'أحمد الطيب'
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
                      const Divider(thickness: 1,color: Colors.grey,),
                      userArea(
                          userImage: 'images/Dr_Zakir_Naik.jpg',
                          aboutUser:' هو داعية إسلامي وواعظ إسلامي هندي ومؤسس ورئيس مؤسسة البحوث الإسلامية (IRF). وهو أيضًا مؤسس قناة السلام. وقد تم اعتباره "سلطة في مجال مقارنة الأديان"،',
                          mainImage: 'images/Dr_Zakir_Naik.jpg',
                          userName: 'ذاكر عبد الكريم نايك'
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
                      const Divider(thickness: 1,color: Colors.grey,),

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
