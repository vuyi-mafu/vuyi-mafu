import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class ComorosNewspapers extends StatelessWidget {
  ComorosNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Al Watwan', about: "Le premier journal des Comores", logo: 'comoros newspaper logos/alwatwan.png', launcher: 'www.alwatwan.net'),
    AllNewspapers(index: 1, name: 'Habari Za Comores', about: "Toute l'actualité des Comores", logo: 'comoros newspaper logos/habarizacomores.png', launcher: 'www.habarizacomores.com'),
    AllNewspapers(index: 2, name: 'Le Mohelien', about: "Site d'Information sur les Iles Comores", logo: 'comoros newspaper logos/lemohelien.png', launcher: 'www.lemohelien.com'),
    AllNewspapers(index: 3, name: 'La Gazette des Comores', about: "La UNE de ce mardi!", logo: 'comoros newspaper logos/lagazettedescomores.png', launcher: 'lagazettedescomores.com'),
    AllNewspapers(index: 4, name: 'Comores Infos', about: "1er site d'information des Comores", logo: 'comoros newspaper logos/comoresinfos.png', launcher: 'www.comoresinfos.net'),

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
              'COMOROS NEWSPAPERS OFFICIAL',
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