import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class MadagascarNewspapers extends StatelessWidget {
  MadagascarNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: "L'Express de Madagascar", about: "QUOTIDEN D'INFORMATION ET D'ANALYSE", logo: 'madagascar newspaper logos/leexpressdemadagascar.png', launcher: 'www.lexpress.mg'),
    AllNewspapers(index: 1, name: 'Madagascar Tribune', about: '', logo: 'madagascar newspaper logos/tribunemadagascar.png', launcher: 'www.madagascar-tribune.com'),
    AllNewspapers(index: 2, name: 'Midi Madigasikara', about: '', logo: 'madagascar newspaper logos/midi.png', launcher: 'www.midi-madagasikara.mg'),
    AllNewspapers(index: 3, name: 'Lakroa (Cross)', about: "", logo: 'madagascar newspaper logos/lakroa.png', launcher: 'www.lakroa.mg'),
    AllNewspapers(index: 4, name: 'Newsmada', about: 'Les Actus de Madagascar', logo: 'madagascar newspaper logos/newsmada.png', launcher: 'www.newsmada.com'),
    AllNewspapers(index: 5, name: 'Moov', about: '', logo: 'madagascar newspaper logos/moov.png', launcher: 'www.moov.mg'),
    AllNewspapers(index: 6, name: 'La Verite', about: "Quotidien national d'information et d'analyse", logo: 'madagascar newspaper logos/laverite.png', launcher: 'www.laverite.mg'),
    AllNewspapers(index: 7, name: 'Orange Madagascar', about: '', logo: 'madagascar newspaper logos/orange.png', launcher: 'www.actu.orange.mg'),
    // AllNewspapers(index: 8, name: 'La Gazette de la Grande Isle', about: '', logo: '', launcher: 'www.lagazette-dgi.com'),
    AllNewspapers(index: 9, name: 'Madagate', about: "Madagate, journal d'investigation en ligne à Madagascar", logo: 'madagascar newspaper logos/madagate.png', launcher: 'www.madagate.org'),
    // AllNewspapers(index: 10, name: "L'Acutalite", about: '', logo: '', launcher: 'www.lactualite.mg'),
    // AllNewspapers(index: 11, name: 'La Tribune de Diego', about: '', logo: '', launcher: 'www.latribune.cyber-diego.com'),
    // AllNewspapers(index: 12, name: 'Ao Raha', about: '', logo: '', launcher: 'www.aoraha.mg'),
    // AllNewspapers(index: 13, name: 'Madagascar TV', about: '', logo: '', launcher: 'www.matv.mg'),
    AllNewspapers(index: 14, name: 'Ny Valosoa Vaovao', about: '', logo: 'madagascar newspaper logos/nyvalosa.png', launcher: 'www.gvalosoa.net'),
    // AllNewspapers(index: 15, name: 'Mad Online', about: '', logo: '', launcher: 'www.madonline.com'),
    // AllNewspapers(index: 16, name: 'Info K Mada', about: '', logo: '', launcher: 'www.infokmada.org'),

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
              'MADAGASCAR NEWSPAPERS OFFICIAL',
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