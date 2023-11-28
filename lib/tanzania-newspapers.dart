import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class TanzaniaNewspapers extends StatelessWidget {
  TanzaniaNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'The Citizen', about: "It's the content that counts", logo: 'tanzania newspaper logos/thecitizen.png', launcher: 'www.thecitizen.co.tz'),
    AllNewspapers(index: 1, name: 'Daily News', about: '', logo: 'tanzania newspaper logos/dailynews.png', launcher: 'www.dailynews.co.tz'),
    AllNewspapers(index: 2, name: 'Habari Leo', about: 'GWIJI LA HABARI TANZANIA', logo: 'tanzania newspaper logos/habari.png', launcher: 'www.habarileo.co.tz'),
    AllNewspapers(index: 3, name: 'Mwanaspoti', about: "", logo: 'tanzania newspaper logos/mwanaspoti.png', launcher: 'www.mwanaspoti.co.tz'),
    AllNewspapers(index: 4, name: 'Bongo 5', about: 'The Hottest News, Gossip, Music and Videos!', logo: 'tanzania newspaper logos/bongo5.png', launcher: 'www.bongo5.com'),
    AllNewspapers(index: 5, name: 'Global Publishers', about: 'The House of Favourite Newspapers', logo: 'tanzania newspaper logos/globalpublishers.png', launcher: 'www.globalpublishers.co.tz'),
    AllNewspapers(index: 6, name: 'Dar 24', about: 'Kwa habari za Uhakika', logo: 'tanzania newspaper logos/dar24.png', launcher: 'www.globalpublishers.co.tz'),
    AllNewspapers(index: 7, name: 'MwanaHALISI Online', about: '', logo: 'tanzania newspaper logos/mwanahalisa.png', launcher: 'www.mwanahalisionline.com'),
    AllNewspapers(index: 8, name: 'Jamhuri', about: 'Tunaanzia Wanapoishia Wengine', logo: 'tanzania newspaper logos/jamhuri.png', launcher: 'www.jamhurimedia.co.tz'),
    AllNewspapers(index: 9, name: 'ZanziNews', about: 'Habari za Punde', logo: 'tanzania newspaper logos/zanzinews.png', launcher: 'www.zanzinews.com'),
    AllNewspapers(index: 10, name: 'The Guardian', about: '', logo: 'tanzania newspaper logos/theguardian.png', launcher: 'www.guardian.co.tz'),
    AllNewspapers(index: 11, name: 'Tanzania Broadcasting Corporation (TBC)', about: 'Ukweli na Uhakika', logo: 'tanzania newspaper logos/tbc.png', launcher: 'www.tbc.go.tz'),
    AllNewspapers(index: 12, name: 'Independent Television (ITV)', about: '', logo: 'tanzania newspaper logos/itv.png', launcher: 'www.itv.co.tz'),
    AllNewspapers(index: 13, name: 'Star TV', about: '', logo: 'tanzania newspaper logos/startv.png', launcher: 'www.startv.co.tz'),
    AllNewspapers(index: 14, name: 'Business Times', about: 'News for business owners', logo: 'tanzania newspaper logos/businesstimes.png', launcher: 'www.businesstimes.co.tz'),
    AllNewspapers(index: 15, name: 'IPP Media', about: '', logo: 'tanzania newspaper logos/ipp.png', launcher: 'www.ippmedia.com'),

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
          appBar: AppBar(
            // leading: Icon(Icons.auto_awesome),
            title: const Text(
              'TANZANIA NEWSPAPERS OFFICIAL',
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