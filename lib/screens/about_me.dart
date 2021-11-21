import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: false,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   radius: 90,
              //   backgroundImage: AssetImage('images/karam.jpeg'),
              // ),
              const SizedBox(height: 20,),
              SvgPicture.asset('images/Logo.svg'),
              const SizedBox(height: 20,),
              const Text('يعتبر التطبيق كمرجع لاهم الشخصيات الدينيه والتوعويه والارشاديه والمؤثره في مختلف مجالات الحياه فهناك الدعاه والمؤثرين واشهر قارئي القُرآن الكريم',style:
              TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)  ,
              ),
              const SizedBox(height: 20,),


              Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 10),
                  child: const Text(' عني : ',style: TextStyle(color: Colors.black,fontSize: 23,),)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    // Icon(Icons.add),
                    radius: 50,
                    backgroundColor: Colors.deepPurpleAccent,

                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/karam.jpeg'),
                      radius: 45,
                    ),
                  ),
                  SizedBox(width: 30,),
                  Text(
                    'كرم محمد شعت',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.lightBlue,
                      fontFamily: 'Noto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),


              const Divider(
                height: 10,
                color: Colors.black,
                thickness: 0.8,
                indent: 10,
                endIndent: 10,
              ),
              GestureDetector(
                onTap: ()async => {
                  await launch(
                      "mailto:karm.shaat@gmail.com")
                },
                child: Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  shadowColor: Colors.deepPurple,
                  child: const ListTile(
                    leading: Icon(Icons.email_sharp),
                    title: Text( 'الايميل',
                      style: TextStyle(
                        fontFamily:' Noto',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        letterSpacing: 1,
                      ),
                    ),
                    subtitle: Text('karm.shaat@gmail.com'),
                    trailing: Icon(
                      Icons.send_sharp,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 3,),
              GestureDetector(
                onTap: () async => {
                  await launch(
                      "tel:+970595783031")
                },
                child: Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  shadowColor: Colors.deepPurple,
                  child: const ListTile(
                    leading: Icon(Icons.call),
                    title: Text( 'رقم الهاتف',
                      style: TextStyle(
                        fontFamily:'Noto',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        letterSpacing: 1,
                      ),
                    ),
                    subtitle: Text('+970595783031'),
                    trailing: Icon(
                      Icons.phone_android,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              const Text('و تواصل ايضاً من خلال :  ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              const SizedBox(height: 3,),
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
                                    "https://www.facebook.com/2kaRaM.SHaat1/")
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
                                    "https://twitter.com/Karam11shaat1")
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              onPressed: () async => {
                                await launch(
                                    "https://www.instagram.com/karam.shaat/")
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
              SizedBox(height: 15,),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              const Text('كل الشكر والتقدير للمهندس مؤمن على ما بذله من مجهودات تجاهنا ساعدتنا للارتقاء بمستوانا التقني',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    // Icon(Icons.add),
                    radius: 50,
                    backgroundColor: Colors.deepPurpleAccent,

                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/momen.jpg'),
                      radius: 45,
                    ),
                  ),
                  SizedBox(width: 30,),
                  Text(
                    'م.مؤمن سيسالم',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.lightBlue,
                      fontFamily: 'Noto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
                                    "https://www.facebook.com/Momen.Sisalem")
                              },
                              icon: const Icon(Icons.facebook),
                              color: Colors.blue,
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
                                    "mailto:Momen.sisalem@gmail.com")
                              },
                              icon: const Icon(
                                  FontAwesomeIcons.envelope),
                              color: Colors.blueGrey,
                              iconSize: 28),
                          // SizedBox(height: 3,),
                        ],
                      ),
                    ),
                    // Center(
                    //   child: Column(
                    //     children: [
                    //       IconButton(
                    //           onPressed: () async => {
                    //             await launch(
                    //                 "https://twitter.com/Karam11shaat1")
                    //           },
                    //           icon:
                    //           const Icon(FontAwesomeIcons.twitter),
                    //           color: Colors.blue,
                    //           iconSize: 28),
                    //     ],
                    //   ),
                    // ),

                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              onPressed: () async => {
                                await launch(
                                    "https://www.instagram.com/momensisalem/")
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
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              const Text('كل الشكر لاداره الحاضنه على تهيئه الظروف وتوفير كل سبل الراحة              ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircleAvatar(
                      // Icon(Icons.add),
                      radius: 50,
                      backgroundColor: Colors.deepPurpleAccent,

                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/ucasti.jpg'),
                        radius: 45,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      'حاضنة يوكاس التكنولوجية',
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.lightBlue,
                        fontFamily: 'Noto',
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
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
                                    "https://www.facebook.com/ucasti.org//")
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
                                    "https://twitter.com/ucastiorg")
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              onPressed: () async => {
                                await launch(
                                    "https://www.instagram.com/ucastiorg/")
                              },
                              icon: const Icon(
                                  FontAwesomeIcons.instagram),
                              color: Colors.pink.shade400,
                              iconSize: 28),
                          // SizedBox(height: 3,),
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
                                    "mailto:info@ucasti.ps"
                                )
                              },
                              icon: const Icon(
                                  FontAwesomeIcons.envelope),
                              color: Colors.blueGrey,
                              iconSize: 28),
                          // SizedBox(height: 3,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),





              // SizedBox(height: 15,),
              const Divider(
                color: Colors.black,
                thickness: 1,
                height: 20,
              ),
              const Text(
                'ELAnCER_FLUTTER',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0.2),
              ),
            ],
          ),
        ),
      ],
    );

  }
}
