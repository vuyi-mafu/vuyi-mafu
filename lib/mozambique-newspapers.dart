import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class MozambiqueNewspapers extends StatelessWidget {
  MozambiqueNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Noticias', about: "", logo: 'mozambique newspaper logos/noticias.png', launcher: 'www.jornalnoticias.co.mz'),
    AllNewspapers(index: 1, name: 'MMO', about: "Informação, Emprego, Música, Entretenimento, Arte", logo: 'mozambique newspaper logos/mmo.png', launcher: 'www.mmo.co.mz'),
    AllNewspapers(index: 2, name: 'Carta de Mocambique', about: '', logo: 'mozambique newspaper logos/cartademocambique.png', launcher: 'www.cartamz.com'),
    AllNewspapers(index: 3, name: 'Verdade', about: "A verdade em cada palavra", logo: 'mozambique newspaper logos/verdade.png', launcher: 'www.verdade.co.mz'),
    AllNewspapers(index: 4, name: 'Club of Mozambique', about: '', logo: 'mozambique newspaper logos/clubofmozambique.png', launcher: 'www.clubofmozambique.com'),
    AllNewspapers(index: 5, name: 'Folha de Maputo', about: '', logo: 'mozambique newspaper logos/folha.png', launcher: 'www.folhademaputo.co.mz'),
    AllNewspapers(index: 6, name: 'Portal Moz News', about: '', logo: 'mozambique newspaper logos/portalmoz.png', launcher: 'www.portalmoznews.com'),
    AllNewspapers(index: 6, name: 'Stop', about: 'Notícias nacional do mundo e política internacional', logo: 'mozambique newspaper logos/stop.png', launcher: 'www.stop.co.mz'),
    AllNewspapers(index: 7, name: 'Canal de Mocambique', about: '', logo: 'mozambique newspaper logos/canalmoz.png', launcher: 'www.staging.canal.co.mz'),
    AllNewspapers(index: 8, name: 'Desafio', about: '', logo: 'mozambique newspaper logos/desafio.png', launcher: 'www.jornaldesafio.co.mz'),
    AllNewspapers(index: 9, name: 'Jornal Txopela', about: '', logo: 'mozambique newspaper logos/jornaltxopela.png', launcher: 'www.jornaltxopela.com'),
    AllNewspapers(index: 10, name: 'Zitamar News', about: '', logo: 'mozambique newspaper logos/zitamar.png', launcher: 'www.zitamar.com'),
    AllNewspapers(index: 12, name: 'Jornal Domingo', about: 'Compromisso com os factos', logo: 'mozambique newspaper logos/domingo.png', launcher: 'www.jornaldomingo.co.mz'),
    AllNewspapers(index: 13, name: 'Televisao de Mozambique (TVM)', about: '', logo: 'mozambique newspaper logos/tvm.png', launcher: 'www.tvm.co.mz'),
    AllNewspapers(index: 14, name: 'Portal do Governo', about: '', logo: 'mozambique newspaper logos/portaldogoverno.png', launcher: 'www.portaldogoverno.gov.mz'),

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
              'MOZAMBIQUE NEWSPAPERS OFFICIAL',
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