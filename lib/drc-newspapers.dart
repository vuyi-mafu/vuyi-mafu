import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class DrcNewspapers extends StatelessWidget {
  DrcNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Actualite', about: "", logo: 'drc newspaper logos/actualliterdc.png', launcher: 'www.actualite.cd'),
    AllNewspapers(index: 1, name: 'Agp Agence Congolaise de Presse', about: '', logo: 'drc newspaper logos/agp.png', launcher: 'www.acpcongo.com'),
    AllNewspapers(index: 2, name: 'Desk Eco', about: 'ACTUALITE ECONOMIQUE DE LA RDC', logo: 'drc newspaper logos/deskeco.png', launcher: 'www.deskeco.com'),
    AllNewspapers(index: 3, name: 'La Prosperite', about: "", logo: 'drc newspaper logos/laprosperite.png', launcher: 'www.laprosperiteonline.net'),
    AllNewspapers(index: 4, name: 'Radio Okapi', about: 'Informations pour la Paix et le developpment de la RDC', logo: 'drc newspaper logos/radiookapi.png', launcher: 'www.radiookapi.net'),
    AllNewspapers(index: 5, name: 'Forum des As', about: "Quotidien d'informations géneratés", logo: 'drc newspaper logos/forumdesss.png', launcher: 'www.forumdesas.net'),
    AllNewspapers(index: 6, name: 'Foot RDC', about: 'Info Football, Linafoot, CAF - Actu Foot Congo RDC', logo: 'drc newspaper logos/footrdc.png', launcher: 'www.footrdc.com'),
    AllNewspapers(index: 7, name: 'Congo Synthese', about: '', logo: 'drc newspaper logos/congosynthese.png', launcher: 'www.congosynthese.com'),
    AllNewspapers(index: 8, name: 'Le Phare', about: 'Quotdien indépendant paraissant à Kinshasa', logo: 'drc newspaper logos/lephare.png', launcher: 'www.lephareonline.net'),
    AllNewspapers(index: 9, name: 'Voice of Congo', about: '', logo: 'drc newspaper logos/voiceofcongo.png', launcher: 'www.voiceofcongo.net'),
    AllNewspapers(index: 10, name: 'CAS Info', about: "Au-delà de l'info", logo: 'drc newspaper logos/casinfo.png', launcher: 'www.cas-info.ca'),
    AllNewspapers(index: 11, name: 'mediacongo.net', about: 'Le réflexe web congolals', logo: 'drc newspaper logos/mediacongo.png', launcher: 'www.mediacongo.net'),
    AllNewspapers(index: 12, name: 'Congo Profond', about: "Zoom sur l'autre Congo oublié !", logo: 'drc newspaper logos/congoprofond.png', launcher: 'www.congoprofond.net'),
    AllNewspapers(index: 13, name: 'Congo Indépendant', about: "La vérité est dans la thèse et l'antithèse (Hegel)", logo: 'drc newspaper logos/congoindependent.png', launcher: 'www.congoindependant.com'),
    AllNewspapers(index: 14, name: 'Congo Planet', about: 'News, Music, Videos, Photos from the Congo', logo: 'drc newspaper logos/congoplanet.png', launcher: 'www.congoplanet.com'),
    AllNewspapers(index: 15, name: 'Le Soft International', about: 'THE INTERNATIONAL DRC LEADING NEWSPAPER', logo: 'drc newspaper logos/lesoft.png', launcher: 'www.lesoftonline.net'),

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
              'DRC NEWSPAPERS OFFICIAL',
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