import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InfluencersScreen extends StatefulWidget {
  const InfluencersScreen({Key? key}) : super(key: key);

  @override
  _InfluencersScreenState createState() => _InfluencersScreenState();
}

class _InfluencersScreenState extends State<InfluencersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المؤثرون',
          style: TextStyle(
              color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashColor: Colors.blue,
          splashRadius: 30,
          iconSize: 25,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          padding: const EdgeInsets.only(right: 20),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
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
                        userImage: 'images/shqare2.jpg',
                        aboutUser:
                            'إعلامي سعودي. بدأ بتقديم برامج فكرية اجتماعية ومضيف السلسلة التلفازية خواطر والمضيف السابق لبرنامج يلا شباب، ألّف برامج تلفازية حول مساعدة الشباب على النضج في أفكارهم والبذل في خدمة إيمانهم وتطوير مهاراتهم واكتشاف معرفتهم بالعالم وبدورهم في جعله مكاناً أفضل.',
                        mainImage: 'images/shqare1.png',
                        userName: 'أحمد الشقيري'),
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
                                              "https://www.facebook.com/AhmadAlShugairi")
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
                                              "https://twitter.com/shugairi")
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
                                              "https://www.youtube.com/channel/UC_Ds7nedV3NqYf0zhpYti4A")
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
                                              "https://www.instagram.com/ahmadalshugairi/")
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
                      userName: 'احمد شاهين',
                      aboutUser:'المؤسس والرئيس التنفيذي لشركة Compass للتعلم والتطوير والتي تضم مدرسة تدريب لتأهيل المدربين والمتخصصين في التعلم للانضمام إلى مجال التعلم.',
                      mainImage: 'images/shahen2.jpg',
                      userImage: 'images/shahen.jpg',
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
                                          "https://www.facebook.com/AhmedShahinOfficial/")
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
                                          "https://www.youtube.com/channel/UCr8iNz_n_HJFtBxp7NUzg-g")
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
                                          "https://www.instagram.com/Ahmedshahinofficial/")
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
                        userName: 'كريم اسماعيل',
                        userImage: 'images/karem.jpg',
                        aboutUser:' يعمل في مجال التعليم منذ ٨ سنوات وتخصص في دراسة علم النفس الايجابي منذ ٥ سنوات قدم العديد من الدورات التعليمية الخاصة بالصحة النفسية وله كتاب "استراحة نفسية" من الأكثر الكتب مبيعًا في مجال الصحه النفسيه ',
                        mainImage: 'images/karem1.jpg'),
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
                                          "https://www.facebook.com/Kemotive")
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
                                          "https://twitter.com/Kemotivation")
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
                                          "https://www.youtube.com/kareemesmail")
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
                                          "https://www.instagram.com/KEmotivation/")
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
                      userName: 'معتز مشعل',
                      aboutUser:
                      'معتز مشعل هو استراتيجى تطوير أعمال ومهارات حياتية وصاحب سلسلة من برامج وفعاليات تطوير الذات التي تُعقد في العديد من البلدان العربية وتدرب آلاف من الناس.ولد معتز في عام 1983 لأسرة فلسطينية تنحدر من مدينة رام الله',
                      mainImage: 'images/motaz.jpg',
                      userImage: 'images/motaz.jpg',
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
                                          "https://www.facebook.com/MoatazMashalPage/?fref=ts")
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
                                          "https://twitter.com/moatazmashal?lang=en")
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
                                          "https://www.youtube.com/c/MoatazMashal")
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
                                          "https://www.instagram.com/moataz_mashal/?hl=en")
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
                        userName: 'د.هاله سامر',
                        userImage: 'images/hala.jpg',
                        aboutUser: 'استشاري الصحة النفسية ومدربة تنمية بشرية',
                        mainImage: 'images/hala1.jpg'),
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
                                              "https://www.facebook.com/Halasamirofficial/")
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
                                              "https://twitter.com/hala_samir7")
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
                                              "https://www.youtube.com/c/halasamir")
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
                                              "https://www.instagram.com/halasamirofficial/")
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
                        userName: 'ياسر ممدوح',
                        userImage: 'images/yaser.jpg',
                        aboutUser:
                            'يعتبر من الشخصيات التي حظيت باهتمام كبير في دول مختلفة في الوطن العربي، وهو أيضًا من الأشخاص الذين تعلموا العديد من الأعمال المختلفة ونال إعجاب الكثير من الناس في مختلف دول العالم العربي في أشياء كثيرة.',
                        mainImage: 'images/yaser2.jpg'),
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
                                              "https://www.facebook.com/yassermamdouh4/")
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
                                              "https://twitter.com/yasseralmamdouh")
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
                                              "https://www.youtube.com/c/YasserMamdouh")
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
                                              "https://www.instagram.com/yassermamdouhofficial/")
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
                      userName: 'أسامة الزيرو',
                      aboutUser:
                      'هو مبرمج مصري من أفضل المبرمجين في الوطن العربي , واكثرهم شعبية في الوطن العربي , وهو ايضاً يوتيوبر مصري يقوم بنشر شروحات في مجال البرمجة',
                      mainImage: 'images/osama1.jpg',
                      userImage: 'images/osama.jpg',
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
                        userImage: 'images/ibrahem.jpeg',
                        aboutUser:
                        'إبراهيم عادل شاب مصري مكافح يشغل حتى الآن منصب رئيس قسم الصوتيات بإحدى أشهر مدارس تعلم اللغة الإنجليزية بمدينة هونج كونج التابعة لجمهورية الصين الشعبية.يتحدث الأستاذ إبراهيم عادل أكثر من لغة عالمية مثل اللغة الصينية، اللغة الكانتونية، وهي لغة مشتقة من اللغة الصينية، وطبعا اللغة الإنجليزية، واللغة العربية الأساسية.',
                        mainImage: 'images/ibrahem1.png',
                        userName: ' ابراهيم عادل'),
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
                                          "https://www.facebook.com/zAmericanEnglish/")
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
                                          "https://twitter.com/ZAmericanEnglis")
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
                                          "https://www.youtube.com/c/ZAmericanEnglish")
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
                                          "https://www.instagram.com/zamericanenglish/")
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
                      userName: 'احمد أبو زيد',
                      aboutUser:
                          'أحمد أبوزيد مؤسس قناة " دروس اونلاين " على يوتيوب تهتم بتعليم اللغه الانجليزيه و  الجرافك  و نصائح في اي مجال او تعليم كيفيه عمل اي شئ- الى حد ما',
                      mainImage: 'images/ahmedzaid.jpg',
                      userImage: 'images/ahmedzaid1.jpg',
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
                                              "https://www.facebook.com/droosonline")
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
                                              "https://twitter.com/droos_online")
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
                                              "https://www.youtube.com/channel/UCEHvaZ336u7TIsUQ2c6SAeQ")
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
                                              "https://www.instagram.com/ahmedabouzaid_official/")
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

                  ],
                ),
              ),
            ),
          ),
        ],
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
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.blue,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage), fit: BoxFit.cover),
                      ),
                    ),
                  ),

                  /**
                   * AssetImage(userImage), fit: BoxFit.cover),
                   * */
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5,
                            fontFamily: 'NotoNaskhArabic'),
                      ),
                    ],
                  )
                ],
              ),
              /**
               * IconButton(
                  icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey[600],
                  ),
                  onPressed: () {},
                  )
               * */
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 10),
            child: Text(
              aboutUser,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[900],
                  height: 1.15,
                  letterSpacing: 0,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          const SizedBox(
            height: 5,
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
        ],
      ),
    );
  }
}
