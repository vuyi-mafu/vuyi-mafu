import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class ZambiaNewspapers extends StatelessWidget {
  ZambiaNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'Lusaka Times', about: "Zambia's Leading Online News Site", logo: 'zambia newspaper logos/lusakatimes.png', launcher: 'www.lusakatimes.com'),
    AllNewspapers(index: 1, name: 'Times of Zambia', about: 'Your paper for all times', logo: 'zambia newspaper logos/timesofzam.png', launcher: 'www.times.co.zm'),
    AllNewspapers(index: 2, name: 'Zambia Daily Mail', about: 'Without fear or favour', logo: 'zambia newspaper logos/zambiadailymail.png', launcher: 'www.daily-mail.co.zm'),
    AllNewspapers(index: 3, name: 'News Diggers!', about: "Ear to the ground", logo: 'zambia newspaper logos/newsdiggers.png', launcher: 'www.diggers.news'),
    AllNewspapers(index: 4, name: 'Zambian Eye', about: '', logo: 'zambia newspaper logos/zambianeye.png', launcher: 'www.zambianeye.com'),
    AllNewspapers(index: 5, name: 'Mwebantu News', about: "Zambia's Leading Online News Portal", logo: 'zambia newspaper logos/mwebantu.png', launcher: 'www.mwebantu.com'),
    AllNewspapers(index: 6, name: 'The Zambian Observer', about: 'Latest news From Zambia', logo: 'zambia newspaper logos/zambianobserver.png', launcher: 'www.zambianobserver.com'),
    AllNewspapers(index: 7, name: 'ZamFoot', about: '', logo: 'zambia newspaper logos/zamfoot.png', launcher: 'www.zambianfootball.co.zm'),
    AllNewspapers(index: 8, name: 'Daily Nation', about: "The People's Newspaper", logo: 'zambia newspaper logos/dailynation.png', launcher: 'www.dailynationzambia.com'),
    AllNewspapers(index: 9, name: 'Zambia Online', about: '', logo: 'zambia newspaper logos/zambiaonline.png', launcher: 'www.zambia.co.zm'),
    AllNewspapers(index: 10, name: 'Lusaka Star', about: '', logo: 'zambia newspaper logos/lusakastar.png', launcher: 'www.lusakastar.com'),
    AllNewspapers(index: 11, name: 'Zed Gossip', about: '', logo: 'zambia newspaper logos/zedgossip.png', launcher: 'www.zedgossip.net'),
    AllNewspapers(index: 12, name: 'Independent Observer', about: '', logo: 'zambia newspaper logos/independentobserver.png', launcher: 'www.tiozambia.com'),
    AllNewspapers(index: 13, name: 'Lusaka Voice', about: 'Overview, News and Competitors', logo: 'zambia newspaper logos/lusakavoice.png', launcher: 'www.lusakavoice.com'),
    AllNewspapers(index: 14, name: 'Zambia News 365', about: '', logo: 'zambia newspaper logos/zamnews365.png', launcher: 'www.zambianews365.com'),
    AllNewspapers(index: 15, name: 'Zambia Invest', about: 'Business - Investments - Economy', logo: 'zambia newspaper logos/zambiainvest.png', launcher: 'www.zambiainvest.com'),
    AllNewspapers(index: 16, name: 'Open Zambia', about: "Zambia's only independent news source", logo: 'zambia newspaper logos/openzambia.png', launcher: 'www.openzambia.com'),
    // AllNewspapers(index: 17, name: 'Globe Online', about: '', logo: '', launcher: 'www.theglobeonline.news'),
    AllNewspapers(index: 18, name: 'Zambian Politics News', about: '', logo: 'zambia newspaper logos/zambianpolitics.png', launcher: 'www.zambianpolitics.com'),
    AllNewspapers(index: 19, name: 'Muvi Television', about: 'First in News and Entertainment', logo: 'zambia newspaper logos/muvitv.png', launcher: 'www.muvitv.com'),
    AllNewspapers(index: 20, name: 'The Lowdown magazine', about: '', logo: 'zambia newspaper logos/thelowdown.png', launcher: 'www.lowdownzambia.com'),
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
              'ZAMBIA NEWSPAPERS OFFICIAL',
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