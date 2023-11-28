import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
// import 'package:group_list_view/group_list_view.dart';


class ZimNewspapers extends StatelessWidget {
   ZimNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'The Herald', about: "Zimbabwe's largest daily newspaper.", logo: 'zim newspaper logos/herald.png', launcher: 'www.herald.co.zw'),
    AllNewspapers(index: 1, name: 'NewsDay', about: 'Everyday News for Everyday People', logo: 'zim newspaper logos/newsday.png', launcher: 'www.newsday.co.zw'),
    AllNewspapers(index: 2, name: 'The NewsHawks', about: 'Shining light in dark corners', logo: 'assets/thenewshawks.jpg', launcher: 'www.thenewshawks.com'),
    AllNewspapers(index: 3, name: 'The Chronicle', about: "Bulawayo's most popular daily newspaper", logo: 'zim newspaper logos/thechronicle.png', launcher: 'www.chronicle.co.zw'),
    AllNewspapers(index: 4, name: 'ZimLive', about: 'Breaking News from Zimbabwe', logo: 'zim newspaper logos/zimlive.png', launcher: 'www.zimlive.com'),
    AllNewspapers(index: 5, name: 'The Sunday Mail', about: 'The Leading Family Newspaper in Zimbabwe.', logo: 'zim newspaper logos/thesundaymail.png', launcher: 'www.sundaymail.co.zw'),
    AllNewspapers(index: 6, name: 'H-Metro', about: 'Real Life, Real Drama.', logo: 'assets/hmetro.jpg', launcher: 'www.hmetro.co.zw'),
    AllNewspapers(index: 7, name: 'B-Metro', about: 'Real Drama in Skies', logo: 'zim newspaper logos/bmetro.png', launcher: 'www.bmetro.co.zw'),
    AllNewspapers(index: 8, name: 'Kwayedza', about: 'Bepanhau ReVanhu', logo: 'zim newspaper logos/kwayedza.png', launcher: 'www.kwayedza.co.zw'),
    AllNewspapers(index: 9, name: 'The ManicaPost', about: 'Hot News From The East', logo: 'assets/themanicapost.png', launcher: 'www.manicapost.co.zw'),
    AllNewspapers(index: 10, name: 'The Financial Gazette', about: 'News Worth Knowing', logo: 'zim newspaper logos/thefinancialgazette.png', launcher: 'www.financialgazette.co.zw'),
    AllNewspapers(index: 11, name: 'The Zimbabwe Independent', about: 'The Leading Business Weekly', logo: 'zim newspaper logos/zimindependent.png', launcher: 'www.theindependent.co.zw'),
    AllNewspapers(index: 12, name: 'Daily News', about: 'Telling it like it is', logo: 'zim newspaper logos/dailynews.png', launcher: 'www.dailynews.co.zw'),
    AllNewspapers(index: 13, name: 'The Zimbabwe Daily', about: 'All The News Daily', logo: 'zim newspaper logos/thezimbabwedaily.png', launcher: 'www.thezimbabwedaily.com'),
    AllNewspapers(index: 14, name: 'ZimEye', about: 'Close range Zimbabwe news disclosed daily', logo: 'zim newspaper logos/zimeye.png', launcher: 'www.zimeye.net'),
    AllNewspapers(index: 15, name: 'The Standard (Zimbabwe)', about: 'Best Sunday Read', logo: 'assets/thestandard.jpg', launcher: 'www.thestandard.co.zw'),
    AllNewspapers(index: 16, name: 'The Zimbabwe Mail', about: 'Your News, Your Views, Your Life!', logo: 'zim newspaper logos/thezimbabwemail.png', launcher: 'www.thezimbabwemail.com'),
    AllNewspapers(index: 17, name: 'New Zimbabwe', about: 'The Zimbabwe News You Trust', logo: 'zim newspaper logos/newzimbabwe.png', launcher: 'www.newzimbabwe.com'),
    AllNewspapers(index: 18, name: 'Masvingo Mirror', about: 'The Independent Newspaper for Masvingo', logo: 'zim newspaper logos/masvingomirror.png', launcher: 'www.masvingomirror.com'),

  ];

  Future <void> _launchUrl (String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      // forceSafariVC: true,
      // forceWebView = true,
      mode: LaunchMode.inAppWebView,
    )){
      throw "Cannot launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:
      Builder(
        builder: (BuildContext context) => Scaffold(
          // backgroundColor: Colors.black,
          appBar: AppBar(
            // leading: Icon(Icons.auto_awesome),
            title: const Text(
              'ZIMBABWE NEWSPAPERS OFFICIAL',
              style: TextStyle(fontSize: 19,),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),

          body:
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: getNewspaper.length,
            itemBuilder: (BuildContext context, int index){

              return Card(
                elevation: 6,
                margin: const EdgeInsets.all(10),

                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(getNewspaper[index].logo),
                  ),
                  tileColor: Colors.white,
                  title: Text(
                      getNewspaper[index].name,
                      style: const TextStyle(color: Colors.black,)
                  ),
                  subtitle: Text(
                    getNewspaper[index].about,
                    style: const TextStyle(color: Colors.black,),
                  ),
                  onTap: (){
                    _launchUrl(getNewspaper[index].launcher);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}