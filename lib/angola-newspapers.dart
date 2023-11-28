import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class AngolaNewspapers extends StatelessWidget {
  AngolaNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Jornal de Angola', about: "", logo: 'angola newspaper logos/journaldeangola.png', launcher: 'www.jornaldeangola.ao'),
    AllNewspapers(index: 1, name: 'Folha 8', about: 'Jornalismo com memoria desde 1995', logo: 'angola newspaper logos/folha8.png', launcher: 'www.jornalf8.net'),
    AllNewspapers(index: 2, name: 'Novo Jornal', about: '', logo: 'angola newspaper logos/novojornal.png', launcher: 'www.novojornal.co.ao'),
    AllNewspapers(index: 3, name: 'O Pais', about: "A verdade como notícia", logo: 'angola newspaper logos/opais.png', launcher: 'www.opais.co.ao'),
    AllNewspapers(index: 4, name: 'Correio da Kianda', about: 'A verdade em notícia.', logo: 'angola newspaper logos/correiodakianda.png', launcher: 'www.correiokianda.info'),
    AllNewspapers(index: 5, name: 'Maka Angola', about: 'Em defesa da democracia, contra a corrupção', logo: 'angola newspaper logos/makaangola.png', launcher: 'www.makaangola.org'),
    AllNewspapers(index: 6, name: 'Angola24Horas.com', about: '', logo: 'angola newspaper logos/angola24horas.com.png', launcher: 'www.angola24horas.com'),
    AllNewspapers(index: 7, name: 'Platinaline', about: 'Grupo De  Comunicação', logo: 'angola newspaper logos/platinaline.png', launcher: 'www.platinaline.com'),
    AllNewspapers(index: 8, name: 'Portal de Angola', about: 'Connecting Angola with the World', logo: 'angola newspaper logos/portaldeangola.png', launcher: 'www.portaldeangola.com'),
    AllNewspapers(index: 9, name: 'Expansao', about: '', logo: 'angola newspaper logos/expansao.png', launcher: 'www.expansao.co.ao'),
    AllNewspapers(index: 10, name: 'Ver Angola', about: 'Diariamente, o melhor de Angola', logo: 'angola newspaper logos/verangola.png', launcher: 'www.verangola.net'),
    AllNewspapers(index: 11, name: 'AngoNoticias', about: 'Notícias de Angola', logo: 'angola newspaper logos/angonoticias.png', launcher: 'www.angonoticias.com'),
    AllNewspapers(index: 12, name: 'Angola Online', about: '', logo: 'angola newspaper logos/angolaonline.png', launcher: 'www.angola-online.net'),
    AllNewspapers(index: 14, name: 'Nova Gazeta', about: '', logo: 'angola newspaper logos/novagazeta.png', launcher: 'www.novagazeta.co.ao'),
    AllNewspapers(index: 15, name: 'Voz de Angola', about: 'Notícias de Angola e do Mundo', logo: 'angola newspaper logos/vozdeangola.png', launcher: 'www.vozdeangola.com'),
    AllNewspapers(index: 16, name: 'Noticias de Angola', about: '', logo: 'angola newspaper logos/noticiasdeangola.png', launcher: 'www.noticiasdeangola.co.ao'),
    AllNewspapers(index: 18, name: 'Angola Press (ANGOP)', about: '', logo: 'angola newspaper logos/angolapress.png', launcher: 'www.angop.ao'),
    AllNewspapers(index: 19, name: 'Televisao Popular de Angola (TPA)', about: '', logo: 'angola newspaper logos/tpa.png', launcher: 'www.tpa.ao'),
    AllNewspapers(index: 20, name: 'Club-K', about: 'Notícias Imparciais de Angola', logo: 'angola newspaper logos/clubk.png', launcher: 'www.club-k.net'),

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
              'ANGOLA NEWSPAPERS OFFICIAL',
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