import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class MauritiusNewspapers extends StatelessWidget {
  MauritiusNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: "L'Express", about: "Toute l'actualité de l'île Maurice en temps réel", logo: "mauritius newspaper logos/l'express.png", launcher: 'www.lexpress.mu'),
    AllNewspapers(index: 1, name: 'Le Mauricien', about: "Site Indépendant d'information et d'opinion", logo: "mauritius newspaper logos/l'mauricien.png", launcher: 'www.lemauricien.com'),
    AllNewspapers(index: 2, name: '5-Plus Dimanche', about: '', logo: 'mauritius newspaper logos/5plus.png', launcher: 'www.5plus.mu'),
    AllNewspapers(index: 3, name: 'Le Défi Media', about: "", logo: 'mauritius newspaper logos/defimedia.png', launcher: 'www.defimedia.info'),
    AllNewspapers(index: 4, name: 'Maurice Info', about: 'Informer et partager en toute intégralité 24/24', logo: 'mauritius newspaper logos/mauriceinfo.png', launcher: 'www.maurice-info.mu'),
    AllNewspapers(index: 5, name: 'Sunday Times', about: '', logo: 'mauritius newspaper logos/sundaytimes.png', launcher: 'www.sundaytimesmauritius.com'),
    AllNewspapers(index: 6, name: 'MBC', about: 'Inform, Educate, Entertain', logo: 'mauritius newspaper logos/mbc.png', launcher: 'www.mbcradio.tv'),
    AllNewspapers(index: 7, name: 'Mauritius Times', about: '', logo: 'mauritius newspaper logos/mauritiustimes.png', launcher: 'wwww.mauritiustimes.com'),

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
              'MAURITIUS NEWSPAPERS OFFICIAL',
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