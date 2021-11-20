import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/ALsodaes/")
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
                                                "https://twitter.com/alsudayscom?lang=ar"
                                            )},
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
                                                "https://www.youtube.com/channel/UClRPBUVpvQFDXhd7U9Vbjbw")
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
                                      onPressed: () async => {await launch("https://www.instagram.com/_asudais/")},
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
                        userName: 'د. ماهر المعيقلي',
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
                                      onPressed: () async => {await launch("https://www.facebook.com/almuaiqly10/")},
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
                                      onPressed: () async => {await launch("https://twitter.com/almuaiqly10")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/channel/UCIiZpxs209kndl6lr34vBPw")},
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
                                      onPressed: () async => {await launch("https://www.instagram.com/almuaiqly10/")},
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
                                      onPressed: () async => {await launch("https://www.facebook.com/Alafasy")},
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
                                      onPressed: () async => {await launch("https://twitter.com/alafasy")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/user/alafasychannels")},
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
                                      onPressed: () async => {await launch("https://www.instagram.com/alafasy/")},
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
                                      onPressed: () async => {await launch("https://www.facebook.com/Yasser.Aldosry")},
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
                                      onPressed: () async => {await launch("https://twitter.com/aldosry_net")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/channel/UCf5vl3vN4zU2NSdcL-3Z5Nw")},
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                                      onPressed: () async => {await launch("https://www.facebook.com/nasserAlqatami/")},
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
                                      onPressed: () async => {await launch("https://twitter.com/nasseralqtami")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/user/alqtamiChannelYoutub")},
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
                                      onPressed: () async => {await launch("https://www.instagram.com/alqtaminasser/")},
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
                        userName: 'أ.د. سعود الشريم ',
                        aboutUser:
                        'إمام الحرم المكي من الفترة من 1412 هـ - ولازال،  عميد كلية الدراسات القضائية والأنظمة جامعة أم القرى وإمام وخطيب المسجد الحرام وقاضي سابق بالمحكمة الكبرى بمكة المكرمة',
                        mainImage: 'images/shrem.jpg',
                        userImage: 'images/shrem.jpg',
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
                                      onPressed: () async => {await launch("https://www.facebook.com/salshuraym/")},
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
                                      onPressed: () async => {await launch("https://twitter.com/salshuraym")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/channel/UCGUK0a-a20ef34PI4X60SRQ")},
                                      icon:
                                          const Icon(FontAwesomeIcons.youtube),
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
                        userName: 'محمد جبريل ',
                        aboutUser:
                            ' حفظ القرآن الكريم وعمره لا يتعدى 9 سنوات، وحاصل على ليسانس في الشريعة والقانون من جامعة الأزهر',
                        mainImage: 'images/Muhammad_Jebril.png',
                        userImage: 'images/Muhammad_Jebril.png',
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
                                      onPressed: () async => {await launch("https://jebril.com/")},
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
                                      onPressed: () async => {await launch("https://jebril.com/")},
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
                                      onPressed: () async => {await launch("https://jebril.com/")},
                                      icon:
                                      const Icon(FontAwesomeIcons.youtube),
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
                        userName: 'أحمد النفيس',
                        aboutUser:
                        'امام مسجد الدولة الكبيمام مسجد الدولة الكبير وإمام مسجد الياقوت بالكويت في رمضان أتم حفظ كتاب الله في آخر سنة من المرحلة الثانوية خريج الجامعة الإسلامية بالمدينة النبوية تخصص الفقه المقارن وأصول الفقه',
                        mainImage: 'images/nafes.jpg',
                        userImage: 'images/nafes.jpg',
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
                                      onPressed: () async => {await launch("https://www.facebook.com/alnufais")},
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
                                      onPressed: () async => {await launch("https://twitter.com/ahmad_alnufais")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/c/ahmadalnufais/featured")},
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
                                      onPressed: () async => {await launch("https://www.instagram.com/ahmad_alnufais/")},
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
                      userArea(
                        userName: 'اسلام صبحي',
                        aboutUser:
                        'اسلام صبحي هو من مواليد سنة 1998، من مواليد قرية مليج، مركز شبين الكوم، محافظة المنوفية وقد بدأ تسجيل قراءاته كهاو على يوتيوب، والتي حصدت ملايين المشاهدات، ثم أنشأ قناته الرسمية الخاصة على يوتيوب في يوليو 2018 ',
                        mainImage: '',
                        userImage: 'images/islamSobhi.jpg',
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
                                      onPressed: () async => {await launch("https://www.facebook.com/islam.sobhii")},
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
                                      onPressed: () async => {await launch("https://twitter.com/Eslamsophy10")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/channel/UCzU3jMTL1mFb3Ql9g-pRn9A")},
                                      icon:
                                      const Icon(FontAwesomeIcons.youtube),
                                      color: Colors.redAccent,
                                      iconSize: 28),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                    onPressed: () async => {await launch("https://www.instagram.com/islamsobhi_official/")},
                                    icon: const Icon(FontAwesomeIcons.instagram),
                                    color: Colors.pink.shade400,
                                    iconSize: 28),
                                // SizedBox(height: 3,),
                              ],
                            ),

                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      userArea(
                        userName: 'عبدالرحمن مسعد ',
                        aboutUser:
                        'هو قاريء قرآن مصري الجنسية، وُلد و نشأ في الرياض بالمملكة العربية السعودية ، بدأ حفظ القران الكريم في عُمر الخمسة سنوات',
                        mainImage: 'images/abdelrahman.jpg',
                        userImage: 'images/abdelrahman.jpg',
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
                                      onPressed: () async => {await launch("https://www.facebook.com/im9li9/")},
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
                                      onPressed: () async => {await launch("https://twitter.com/im9li9")},
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
                                      onPressed: () async => {await launch("https://www.youtube.com/channel/UCaT_sepikLcg8q_0Qvdf0Ng")},
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
                                      onPressed: () async => {await launch("https://www.instagram.com/9li9/")},
                                      icon: const Icon(FontAwesomeIcons.instagram),
                                      color: Colors.pink.shade400,
                                      iconSize: 28),
                                  // SizedBox(height: 3,),
                                ],
                              ),
                            )
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
        ],
      ),
    );
  }
}
