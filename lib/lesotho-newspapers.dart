import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class LesothoNewspapers extends StatelessWidget {
  LesothoNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Sunday Express', about: "Lesotho's only Sunday paper", logo: 'lesotho newspaper logos/sundayexpress.png', launcher: 'www.sundayexpress.co.ls'),
    AllNewspapers(index: 1, name: 'The Post', about: 'Telling It Like Is', logo: 'lesotho newspaper logos/thepost.png', launcher: 'www.thepost.co.ls'),
    AllNewspapers(index: 2, name: 'Lesotho Times', about: 'News without fear or favour', logo: 'lesotho newspaper logos/lesothotimes.png', launcher: 'www.lestimes.com'),
    AllNewspapers(index: 3, name: 'Informative', about: "Nobody says it? We do.....", logo: 'lesotho newspaper logos/informative.png', launcher: 'www.informativenews.co.ls'),
    AllNewspapers(index: 4, name: 'Public Eye', about: "We've got news for you", logo: 'lesotho newspaper logos/publiceye.png', launcher: 'www.publiceyenews.com'),
    // AllNewspapers(index: 5, name: 'Jeune Afrique', about: '', logo: '', launcher: 'www.jeuneafrique.com'),

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
              'LESOTHO NEWSPAPERS OFFICIAL',
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