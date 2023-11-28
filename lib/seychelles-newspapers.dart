import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class SeychellesNewspapers extends StatelessWidget {
  SeychellesNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Seychelles Nation', about: "", logo: 'seychelles newspaper logos/seychellesnation.png', launcher: 'www.nation.sc'),
    // AllNewspapers(index: 1, name: 'People', about: '', logo: '', launcher: 'www.thepeople.sc'),
    AllNewspapers(index: 2, name: 'SBC TV', about: '', logo: 'seychelles newspaper logos/sbc.png', launcher: 'www.sbc.sc'),
    AllNewspapers(index: 3, name: 'Seychelles | Four Seasons Magazine', about: "", logo: 'seychelles newspaper logos/4seasons.png', launcher: 'www.fourseasons.com'),
    // AllNewspapers(index: 4, name: 'The Seychelles Islands (travel information)', about: '', logo: '', launcher: 'www.seychelles.com'),
    // AllNewspapers(index: 5, name: 'Seychelles Weekly', about: '', logo: '', launcher: 'www.seychellesweekly.com'),
    AllNewspapers(index: 6, name: 'Today in Seychelles', about: '', logo: 'seychelles newspaper logos/todayinseychelles.png', launcher: 'www.todayinseychelles.com'),
    // AllNewspapers(index: 7, name: 'Jeune Afrique', about: '', logo: '', launcher: 'www.jeuneafrique.com'),


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
              'SEYCHELLES NEWSPAPERS OFFICIAL',
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