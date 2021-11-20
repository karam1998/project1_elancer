import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FamouseScreen extends StatefulWidget {
  const FamouseScreen({Key? key}) : super(key: key);

  @override
  _FamouseScreenState createState() => _FamouseScreenState();
}

class _FamouseScreenState extends State<FamouseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'اصحاب الروايه',
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
                        userName: 'نايف الصحفي',
                        aboutUser:
                            'هو المشرف العام على مشروع المصليات المتنقلة في جدة بالسعودية واخصائي تثقيف بجمعية كفى وداعية بمشروع سلطان الخير لحماية الأمن الفكري',
                        mainImage: 'images/naef.jpg',
                        userImage: 'images/naef.jpg',
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
                                                "https://www.facebook.com/alsahfe2")
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
                                                "https://twitter.com/alsahfe2")
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
                                                "https://www.youtube.com/user/AL9A7FI")
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
                                                "https://www.facebook.com/GrandImam")
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
                        userName: 'مصطفى حسني',
                        aboutUser:
                            'داعية إسلامي مصري، ولد عام 1978 ، وهو حاصل على بكالوريوس تجارة من جامعة عين شمس عام 2000 ، وحاصل على شهادة معهد إعداد الدعاة التابع لوزارة الأوقاف المصرية',
                        mainImage: 'images/mustafa1.png',
                        userImage: 'images/mustafa1.png',
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
                                                "https://www.facebook.com/MustafaHosny")
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
                                                "https://twitter.com/mustafahosny")
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
                                                "https://www.youtube.com/c/MustafaHosny")
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
                                                "https://www.instagram.com/mustafahosnyofficial/")
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
                          userName: 'عُمر آل عوضه',
                          userImage: 'images/omar.jpg',
                          aboutUser:
                              ' عمر آل عوضة ولد في السعودية عام ١٩٩٨، يبلغ من العمر ٢٢ سنة، ديانته هي الإسلام، يتبع الحزب السني، له أصول تركية , درس إدارة الأعمال، وخاض تجربة الشهرة وهو صغير من خلال تقديم محتوى كوميدي في البداية وبعدها اتجه لتقديم محتوى هادف يغير من نفوس الشباب، ويصلح أحوالهم',
                          mainImage: 'images/omar.jpg'),
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
                                                "https://www.facebook.com/omar.binodah")
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
                                                "https://www.youtube.com/user/osamaoa24")
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
                                                "https://www.instagram.com/bin_odahx/")
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
                        userName: 'محمد النحيت',
                        aboutUser:
                            'علم اجتماع | صانع محتوى اجتماعي | مقدم برامج | رئيس تنفيذي لشركة نبذة للإنتاج',
                        mainImage: 'images/mohammedNahet.jpg',
                        userImage: 'images/mohammedNahet.jpg',
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
                                                "https://www.facebook.com/people/%D9%85%D8%AD%D9%85%D8%AF-%D8%A7%D9%84%D9%86%D8%AD%D9%8A%D8%AA-Mohammed-Alnhet/100044285923503/")
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
                                                "https://twitter.com/M_Alnhet")
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
                                                "https://www.youtube.com/c/alnhet")
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
                                                "https://www.instagram.com/m_alnhet/")
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
                        userName: 'محمود الحسنات',
                        aboutUser:
                            'داعية، وخطيب، وكاتب فلسطيني (ولد في مخيم جباليا، 1989م)، مقيم في تركيا، نشأ وترعرع في قطاع غزة، يعتبر واحداً من مشاهير اليوتيوب في الوطن العربي؛ إذ يتابعه أكثر من 3.93 مليون متابع حتى تاريخ 1 آب 2021، وأكثر من 5.5 مليون متابع على الفيسبوك، ونحو 196 ألف على تويتر',
                        mainImage: 'images/Alhasanat.jpg',
                        userImage: 'images/hasanat.jpg',
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
                                                "https://www.facebook.com/abohamzaalhasanat")
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
                                                "https://twitter.com/abohamzahasanat")
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
                                                "https://www.youtube.com/channel/UCTsAN8CeCY5zJ_SA8kekTXg")
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
                                                "https://www.instagram.com/mahmoudalhasanat/")
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
                                      onPressed: () async => {
                                            await launch(
                                                "https://www.facebook.com/im9li9/")
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
                                                "https://twitter.com/im9li9")
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
                                                "https://www.youtube.com/channel/UCaT_sepikLcg8q_0Qvdf0Ng")
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
                                                "https://www.instagram.com/9li9/")
                                          },
                                      icon: const Icon(
                                          FontAwesomeIcons.instagram),
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

  userArea({userName, userImage, aboutUser, mainImage}) {
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
