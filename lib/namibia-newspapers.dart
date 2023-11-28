import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class NamibiaNewspapers extends StatelessWidget {
  NamibiaNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'The Namibian', about: "", logo: 'namibia newspaper logos/thenamibian.png', launcher: 'www.namibian.com.na'),
    AllNewspapers(index: 1, name: 'New Era', about: 'Newspaper for a New Namibia', logo: 'namibia newspaper logos/newera.png', launcher: 'www.neweralive.na'),
    AllNewspapers(index: 2, name: 'Allgemeine Zeitung', about: '', logo: 'namibia newspaper logos/az.png', launcher: 'www.az.com.na'),
    AllNewspapers(index: 3, name: 'Die Republikein', about: "Jou Land, Jou Taal, Jou Nuus", logo: 'namibia newspaper logos/dierepublic.png', launcher: 'www.republikein.com.na'),
    AllNewspapers(index: 4, name: 'Namibia Economist', about: 'African Business Centre', logo: 'namibia newspaper logos/namibiaeconomist.png', launcher: 'www.economist.com.na'),
    AllNewspapers(index: 5, name: 'Namibian Sun', about: '', logo: 'namibia newspaper logos/namibiasun.png', launcher: 'www.namibiansun.com'),
    AllNewspapers(index: 6, name: 'Informanté', about: 'News firm but fair', logo: 'namibia newspaper logos/informante.png', launcher: 'www.informante.web.na'),
    AllNewspapers(index: 7, name: 'Windhoek Observer', about: 'DEMOCRACY IN THE MIRROR', logo: 'namibia newspaper logos/windhoekobserver.png', launcher: 'www.observer24.com.na'),
    AllNewspapers(index: 8, name: 'Capri Vision', about: 'Since 2002, Our Eyes Still Open', logo: 'namibia newspaper logos/caprivision.png', launcher: 'www.caprivivision.com'),
    AllNewspapers(index: 9, name: 'Namib Times', about: 'Serving the coastal community since 1958', logo: 'namibia newspaper logos/namibtimes.png', launcher: 'www.namibtimes.net'),
    AllNewspapers(index: 10, name: 'The Villager', about: 'wherever you are', logo: 'namibia newspaper logos/thevillager.png', launcher: 'www.thevillager.com.na'),
    AllNewspapers(index: 11, name: 'Namibia Press Agency (NAMPA)', about: 'Telling the Namibian Story', logo: 'namibia newspaper logos/nampa.png', launcher: 'www.nampa.org'),
    AllNewspapers(index: 12, name: 'Namibian Broadcasting Corporation (NBC)', about: '', logo: 'namibia newspaper logos/nbc.png', launcher: 'wwwww.nbc.na'),
    AllNewspapers(index: 13, name: 'Kanaal 7', about: 'Media Netwerk vir Christus', logo: 'namibia newspaper logos/kanaal7.png', launcher: 'www.k7.com.na'),
    AllNewspapers(index: 14, name: 'Radiowave', about: '', logo: 'namibia newspaper logos/radiowave.png', launcher: 'www.radiowave.com.na'),
    AllNewspapers(index: 15, name: 'Namibia News Digest', about: 'Latest News and Press Releases', logo: 'namibia newspaper logos/nambianewsdigest.png', launcher: 'www.namibianewsdigest.com'),
    AllNewspapers(index: 16, name: '99FM', about: 'Your Inspiration Station', logo: 'namibia newspaper logos/99fm.png', launcher: 'www.99fm.com.na'),
    AllNewspapers(index: 17, name: 'Kundana', about: '', logo: 'namibia newspaper logos/kundana.png', launcher: 'www.kundana.com.na'),
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
              'NAMIBIA NEWSPAPERS OFFICIAL',
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