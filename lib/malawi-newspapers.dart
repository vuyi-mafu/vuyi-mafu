import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class MalawiNewspapers extends StatelessWidget {
  MalawiNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'The Nation', about: "", logo: 'malawi newspaper logos/thenation.png', launcher: 'www.mwnation.com'),
    AllNewspapers(index: 1, name: 'Nyasa Times', about: 'Malawi breaking news source', logo: 'malawi newspaper logos/nyasatimes.png', launcher: 'www.nyasatimes.com'),
    AllNewspapers(index: 2, name: 'The Maravi Post', about: '', logo: 'malawi newspaper logos/themaravipost.png', launcher: 'www.maravipost.com'),
    AllNewspapers(index: 3, name: 'The Daily Times', about: "Malawi's Premier Online News", logo: 'malawi newspaper logos/dailytimes.png', launcher: 'www.times.mw'),
    AllNewspapers(index: 4, name: 'Biz Malawi Online', about: '', logo: 'malawi newspaper logos/bizmalawi.png', launcher: 'www.bizmalawionline.com'),
    AllNewspapers(index: 5, name: 'Capital FM', about: 'News. Business. Music', logo: 'malawi newspaper logos/capitalfm.png', launcher: 'www.capitalradiomalawi.com'),
    AllNewspapers(index: 6, name: 'Face of Malawi', about: 'Your source for Malawian News', logo: 'malawi newspaper logos/faceofomalawi.png', launcher: 'www.faceofmalawi.com'),
    AllNewspapers(index: 7, name: 'Malawi 24', about: 'Malawi News', logo: 'malawi newspaper logos/malawi24.png', launcher: 'www.malawi24.com'),
    AllNewspapers(index: 8, name: 'Malawi Voice', about: 'Giving you trur online news from Malawi', logo: 'malawi newspaper logos/malawivoice.png', launcher: 'www.malawivoice.com'),
    AllNewspapers(index: 9, name: 'Maravi Express', about: 'Your kind of News, Clear and Accurate', logo: 'malawi newspaper logos/maraviexpress.png', launcher: 'www.maraviexpress.com'),
    AllNewspapers(index: 10, name: 'Business Malawi', about: 'Business Updates, Stocks & Financial News', logo: 'malawi newspaper logos/businessmalawi.png', launcher: 'www.businessmalawi.com'),
    AllNewspapers(index: 11, name: 'Malawi Freedom Network', about: 'Stories that rock the world', logo: 'malawi newspaper logos/malawifreedom.png', launcher: 'www.malawifreedomnetwork.com'),
    AllNewspapers(index: 12, name: 'Nyasa Post', about: 'Breaking News From Malawi & Africa', logo: 'malawi newspaper logos/nyasapost.png', launcher: 'www.nyasapost.com'),
    AllNewspapers(index: 13, name: 'Radio Maria Malawi', about: '', logo: 'malawi newspaper logos/radiomaria.png', launcher: 'www.radiomaria.mw'),
    AllNewspapers(index: 14, name: 'Zodiak Broadcasting Station (ZBS)', about: '', logo: 'malawi newspaper logos/zodiak.png', launcher: 'www.zodiakmalawi.com'),

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
              'MALAWI NEWSPAPERS OFFICIAL',
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