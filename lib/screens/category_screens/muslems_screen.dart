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
        title: const Text('RELIGIOUS',style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
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
                      SvgPicture.asset('images/Logo.svg' ),
                      const SizedBox(
                        height: 20,
                      ),

                      userArea(
                          userName: 'Abdulrahman Alsudais',
                          aboutUser: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s' ,
                          mainImage: '',
                          userImage: 'images/sodase.jpg',
                          ),
                      const Divider(thickness: 1,color: Colors.grey,),

                      userArea(
                          userName: 'Maher Almaikulai',
                        aboutUser: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s' ,
                        mainImage: 'images/moaqle2.jpg',
                          userImage: 'images/moaqle.jpg', ),
                      const Divider(thickness: 1,color: Colors.grey,),

                      userArea(
                          userName: 'Mashary Alafasy',
                        aboutUser: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s' ,
                        mainImage: 'images/afasy2.jpg',
                          userImage: 'images/afasy.jpg',
                         ),
                      const Divider(thickness: 1,color: Colors.grey,),
                      userArea(
                        userImage: 'images/fares.jpg',
                        aboutUser: 'Smart System Engineering',
                        mainImage: '',
                        userName: 'Fares Abbad'
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
                          image: AssetImage(mainImage), fit: BoxFit.cover)),
                )
              : Container(),
          const SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                facebookButton(),
                instagramButton(),
                twitterButton(),

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget facebookButton() {
    return Center(
      child: Column(
        children: [
          IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.facebook),
              color: Colors.blue,
              iconSize: 35),
          const Text('Facebook',style: TextStyle(fontSize: 12),)
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
              iconSize: 35),
          // SizedBox(height: 3,),
          const Text('instagram',style: TextStyle(fontSize: 12),),
        ],
      ),
    );
  }

  Widget twitterButton() {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.twitter),
                color: Colors.blue,
                iconSize: 35),
            const Text('Twitter',style: TextStyle(fontSize: 12),)
          ],
        ),

    );
  }
}
