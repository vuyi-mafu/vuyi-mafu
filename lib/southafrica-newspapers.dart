import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:more_container_practice/newspapers_class.dart';
import 'package:group_list_view/group_list_view.dart';


class SouthAfricaNewspapers extends StatelessWidget {
  SouthAfricaNewspapers({Key? key}) : super(key: key);

  List <AllNewspapers> getNewspaper = [
    AllNewspapers(index: 0, name: 'eNCA', about: 'Top Stories', logo: 'south africa newspaper logos/eNCA.png', launcher: 'www.enca.com'),
    AllNewspapers(index: 1, name: 'news24', about: "Trusted News. First", logo: 'south africa newspaper logos/news24.png', launcher: 'www.news24.com'),
    AllNewspapers(index: 2, name: 'SABC News', about: '', logo: 'south africa newspaper logos/sabc.png', launcher: 'www.sabcnews.com'),
    AllNewspapers(index: 3, name: 'The Citizen', about: 'More News, Your Way', logo: 'south africa newspaper logos/thecitizen.png', launcher: 'www.citizen.co.za'),
    AllNewspapers(index: 4, name: 'Daily Sun', about: "", logo: 'south africa newspaper logos/dailysun.png', launcher: 'www.snl24.com'),
    AllNewspapers(index: 5, name: 'South Africa Today', about: '', logo: 'south africa newspaper logos/satoday.png', launcher: 'www.southafricatoday.net'),
    AllNewspapers(index: 6, name: 'Daily Maverick', about: 'South African news, opinion and investigations', logo: 'south africa newspaper logos/dailymaverick.png', launcher: 'www.dailymaverick.co.za'),
    AllNewspapers(index: 7, name: 'TimesLIVE', about: '', logo: 'south africa newspaper logos/timelive.png', launcher: 'www.timeslive.co.za'),
    AllNewspapers(index: 8, name: 'Business Day', about: "", logo: 'south africa newspaper logos/businessday.png', launcher: 'www.businesslive.co.za'),
    AllNewspapers(index: 9, name: 'City Press', about: 'The home of City Press online.', logo: 'south africa newspaper logos/citypress.png', launcher: 'www.news24.com'),
    AllNewspapers(index: 10, name: 'Soccer Laduma', about: 'The best in soccer for South African fans', logo: 'south africa newspaper logos/soccerladuma.png', launcher: 'www.snl24.com'),
    AllNewspapers(index: 11, name: 'The Mail & Guardian', about: "Africa's Best Read", logo: 'south africa newspaper logos/mail&guardian.png', launcher: 'www.mg.co.za'),
    AllNewspapers(index: 12, name: 'ITWeb', about: 'Business Technology News and Information Site', logo: 'south africa newspaper logos/itweb.png', launcher: 'www.itweb.co.za'),
    AllNewspapers(index: 13, name: 'Tech Central', about: 'Technology News Leader in South Africa', logo: 'south africa newspaper logos/techcentral.png', launcher: 'www.techcentral.co.za'),
    AllNewspapers(index: 14, name: 'CapeTalk', about: '', logo: 'south africa newspaper logos/capetalk.png', launcher: 'www.capetalk.co.za'),
    AllNewspapers(index: 15, name: 'African Reporter', about: 'Breaking local news in the East Rand', logo: 'south africa newspaper logos/africanreporter.png', launcher: 'www.africanreporter.co.za'),
    AllNewspapers(index: 16, name: 'SowetanLIVE', about: '', logo: 'south africa newspaper logos/sowetan.png', launcher: 'www.sowetanlive.co.za'),
    AllNewspapers(index: 17, name: 'Die Burger', about: '', logo: 'south africa newspaper logos/dieburger.png', launcher: 'www.netwerk24.com'),
    AllNewspapers(index: 18, name: 'Isolezwe', about: 'Liwela Umfula Ugcwele', logo: 'south africa newspaper logos/isolozwe.png', launcher: 'www.isolezwe.co.za'),
    AllNewspapers(index: 19, name: 'HeraldLIVE', about: 'The Voice of Nelson Mandela Bay.', logo: 'south africa newspaper logos/heraldlive.png', launcher: 'www.heraldlive.co.za'),
    AllNewspapers(index: 20, name: 'Die Son', about: '', logo: 'south africa newspaper logos/dieson.png', launcher: 'www.son.co.za'),
    AllNewspapers(index: 21, name: 'DispatchLIVE', about: '', logo: 'south africa newspaper logos/dispatchlive.png', launcher: 'www.dispatchlive.co.za'),
    AllNewspapers(index: 22, name: 'Alberton Record', about: 'Breaking local news in Alberton', logo: 'south africa newspaper logos/alberton.png', launcher: 'www.albertonrecord.co.za'),
    AllNewspapers(index: 23, name: "Grocott's Mail", about: "South Africa's oldest independent newspaper", logo: 'south africa newspaper logos/grocottsmail.png', launcher: 'www.grocotts.co.za'),
    AllNewspapers(index: 24, name: 'Bedfordview Edenvale News', about: 'Breaking local news in North East Joburg', logo: 'south africa newspaper logos/bedfordview.png', launcher: 'www.bedfordviewedenvalenews.co.za'),
    AllNewspapers(index: 25, name: 'The Daily Voice', about: 'Ons Skrik Vir Niks!', logo: 'south africa newspaper logos/thedailyvoice.png', launcher: 'www.dailyvoice.co.za'),
    AllNewspapers(index: 26, name: 'Lowvelder', about: 'The watchdog of the Lowveld', logo: 'south africa newspaper logos/lowvelder.png', launcher: 'www.lowvelder.co.za'),
    AllNewspapers(index: 27, name: 'George Herald', about: '', logo: 'south africa newspaper logos/georgeherald.png', launcher: 'www.georgeherald.com'),
    AllNewspapers(index: 28, name: 'Pretoria East Rekord', about: 'Breaking local news in Pretoria', logo: 'south africa newspaper logos/pretoriarekord.png', launcher: 'www.rekord.co.za'),
    AllNewspapers(index: 29, name: 'Vaal Weekblad', about: 'Breaking local news in Vaal', logo: 'south africa newspaper logos/vaalweekblad.png', launcher: 'www.vaalweekblad.com'),
    AllNewspapers(index: 30, name: 'Polokwane Review', about: 'Breaking local news in Polokwane', logo: 'south africa newspaper logos/polokwanereview.png', launcher: 'www.reviewonline.co.za'),
    AllNewspapers(index: 31, name: 'South Coast Herald', about: 'Breaking local news in Port Shepstone', logo: 'south africa newspaper logos/southcoastherald.png', launcher: 'www.southcoastherald.co.za'),
    AllNewspapers(index: 32, name: 'Berea Mail', about: 'Breaking local news in your area', logo: 'south africa newspaper logos/bereamail.png', launcher: 'www.bereamail.co.za'),
    AllNewspapers(index: 33, name: 'South Coast Sun', about: 'Breaking local news in Amanzimtoti', logo: 'south africa newspaper logos/southcoastsun.png', launcher: 'www.southcoastsun.co.za'),
    AllNewspapers(index: 34, name: 'Zululand Observer', about: 'Breaking local news in Empangeni', logo: 'south africa newspaper logos/zululandobserver.png', launcher: 'www.zululandobserver.co.za'),
    AllNewspapers(index: 35, name: 'Krugersdorp News', about: 'Local Breaking News Today', logo: 'south africa newspaper logos/krugersdorpnews.png', launcher: 'www.krugersdorpnews.co.za'),
    AllNewspapers(index: 36, name: 'Potchefstroom Herald', about: 'Breaking local news in Potchefstroom', logo: 'south africa newspaper logos/potchefstroom.png', launcher: 'www.potchefstroomherald.co.za'),
    AllNewspapers(index: 37, name: 'Chatsworth Rising Sun', about: 'Breaking local news in Chatsworth', logo: 'south africa newspaper logos/chatsworth.png', launcher: 'www.risingsunchatsworth.co.za'),
    AllNewspapers(index: 38, name: 'Jewish Report', about: 'Source of quality content, news and insights.', logo: 'south africa newspaper logos/jewsishreport.png', launcher: 'www.sajr.co.za'),
    AllNewspapers(index: 39, name: 'Cape Business News', about: '', logo: 'south africa newspaper logos/capebusinessnews.png', launcher: 'www.cbn.co.za'),
    AllNewspapers(index: 40, name: 'Sedibeng Ster', about: 'Breaking local news in Sharpville/Tshepiso', logo: 'south africa newspaper logos/sedibeng.png', launcher: 'www.sedibengster.com'),
    AllNewspapers(index: 41, name: 'Alex News', about: 'Breaking local news in Alexandra', logo: 'south africa newspaper logos/alexnews.png', launcher: 'www.alexnews.co.za'),
    AllNewspapers(index: 42, name: 'Mayihlome News', about: 'Distictively Pan-African', logo: 'south africa newspaper logos/mayihlome.png', launcher: 'www.mayihlomenews.co.za'),
    AllNewspapers(index: 43, name: 'Letaba Herald', about: '', logo: 'south africa newspaper logos/letabaherald.png', launcher: 'www.letabaherald.co.za'),
    AllNewspapers(index: 44, name: 'Eyewitness News', about: '', logo: 'south africa newspaper logos/eyewitness.png', launcher: 'www.ewn.co.za'),
    AllNewspapers(index: 45, name: 'Briefly', about: 'SOUTH AFRICA BREAKING NEWS', logo: 'south africa newspaper logos/briefly.png', launcher: 'www.briefly.co.za'),
    AllNewspapers(index: 46, name: 'The South African', about: '', logo: 'south africa newspaper logos/thesouthafrican.png', launcher: 'www.thesouthafrican.com'),
    AllNewspapers(index: 47, name: 'Maroela Media', about: 'gratis Afrikaanse nuus en kuierplek - gebalanseerd en betroubaar', logo: 'south africa newspaper logos/maroela.png', launcher: 'www.maroelamedia.co.za'),
    AllNewspapers(index: 48, name: '702 (FM Radio Channel)', about: '', logo: 'south africa newspaper logos/702.png', launcher: 'www.702.co.za'),
    AllNewspapers(index: 49, name: 'Algoa FM', about: '', logo: 'south africa newspaper logos/algoa.png', launcher: 'www.algoafm.co.za'),
    AllNewspapers(index: 50, name: 'Share Net', about: 'Your Key To Investing on The JSE Securities', logo: 'south africa newspaper logos/sharenet.png', launcher: 'www.sharenet.co.za'),
    AllNewspapers(index: 51, name: 'Engineering News', about: 'Real-Economy News | Industry News', logo: 'south africa newspaper logos/engnews.png', launcher: 'www.engineeringnews.co.za'),
    AllNewspapers(index: 52, name: 'Politicsweb', about: 'FAIR. BUT FEARLESS', logo: 'south africa newspaper logos/politicsweb.png', launcher: 'www.politicsweb.co.za'),
    AllNewspapers(index: 53, name: 'Polity', about: '', logo: 'south africa newspaper logos/polity.png', launcher: 'www.polity.org.za'),
    AllNewspapers(index: 54, name: 'OFM', about: '', logo: 'south africa newspaper logos/ofm.png', launcher: 'www.ofm.co.za'),
    AllNewspapers(index: 55, name: 'Kempton Express', about: 'Breaking local news in Kempton Park', logo: 'south africa newspaper logos/kempton.png', launcher: 'www.kemptonexpress.co.za'),
    AllNewspapers(index: 56, name: 'Gremlin', about: 'Online Newspaper for the Garden Route', logo: 'south africa newspaper logos/gremlin.png', launcher: 'www.thegremlin.co.za'),
    AllNewspapers(index: 57, name: 'iAfrica', about: "South Africa's Portal Latest News, Sport, Business & Money, Lifestyle", logo: 'south africa newspaper logos/iafrica.png', launcher: 'www.iafrica.com'),
    AllNewspapers(index: 58, name: 'Indianspice', about: '', logo: 'south africa newspaper logos/indianspice.png', launcher: 'www.indianspice.co.za'),
    AllNewspapers(index: 59, name: 'SA Good News', about: 'The Home Of Great South African News', logo: 'south africa newspaper logos/sagoodnews.png', launcher: 'www.sagoodnews.co.za'),


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
              'SOUTH AFRICA NEWSPAPERS OFFICIAL',
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