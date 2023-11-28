import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class BotswanaNewspapers extends StatelessWidget {
  BotswanaNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Botswana Guardian and Midweek Sun', about: "Fearless and Responsible", logo: 'botswana newspaper logos/botswanaguardian.png', launcher: 'www.guardiansun.co.bw'),
    AllNewspapers(index: 1, name: 'Mmegi', about: 'News we need to know daily', logo: 'botswana newspaper logos/mmegi.png', launcher: 'www.mmegi.bw'),
    AllNewspapers(index: 2, name: 'The Voice', about: 'SPEAKS FOR ITSELF', logo: 'botswana newspaper logos/thevoice.png', launcher: 'www.thevoicebw.com'),
    AllNewspapers(index: 3, name: 'The Botswana Gazette', about: '"Kitso ke maatla"', logo: 'botswana newspaper logos/thebotswanagazette.png', launcher: 'www.thegazette.news'),
    AllNewspapers(index: 4, name: 'Daily News Botswana', about: 'THE PAPER THAT INFORMS AND EDUCATES', logo: 'botswana newspaper logos/dailynewsbotswana.png', launcher: 'www.dailynews.gov.bw'),
    AllNewspapers(index: 5, name: 'The Patriot on Sunday', about: "Botswana's Latest and top Breaking News", logo: 'botswana newspaper logos/thepatriotonsunday.png', launcher: 'www.thepatriot.co.bw'),
    AllNewspapers(index: 6, name: 'The Sunday Standard', about: 'EXCELLENCE IS STANDARD PRACTICE', logo: 'botswana newspaper logos/thesundaystandard.png', launcher: 'www.sundaystandard.info'),
    AllNewspapers(index: 8, name: 'Weekend Post', about: 'Insightful', logo: 'botswana newspaper logos/weekendpost.png', launcher: 'www.weekendpost.co.bw'),
    AllNewspapers(index: 9, name: 'Botswana Unplugged', about: 'The News | The Beat | The Style', logo: 'botswana newspaper logos/botswana_unplugged.png', launcher: 'www.botswanaunplugged.com'),
    // AllNewspapers(index: 10, name: 'Kutlwano Magazine', about: '', logo: '', launcher: 'www.kutlwano.gov.bw'),

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
              'BOTSWANA NEWSPAPERS OFFICIAL',
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