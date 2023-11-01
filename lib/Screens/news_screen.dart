import 'package:flutter/material.dart';
import 'package:untitled9/Screens/LoginScreen.dart';
import 'package:untitled9/Model/news_model.dart';
import '../Services/Api_data.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key, required this.categoryUrl}) : super(key: key);
  final String categoryUrl;

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<NewsData>? allNews;
  bool loading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  void getNews() async {
    allNews =
        (await StatesServices().fetchWorkedStatesRecords(widget.categoryUrl));
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : PageView.builder(
         itemCount: allNews?.length,
          scrollDirection: Axis.vertical,
         itemBuilder: (BuildContext context, int index) {
           return InkWell(
             onTap: () {
               Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => LoginScreen()));
             },
             child: Column(
               children: [
                 Container(
                   height: MediaQuery.of(context).size.height/3.5,
                   width: MediaQuery.of(context).size.width,

                   child: Image.network(
                     allNews![index].imageUrl ?? '',
                   ),
                 ),
                 Text(
                   allNews![index].title ?? 'N/A',
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                     allNews![index].content ?? 'N/A',
                   ),
                 ),
               ],
             ));



  }
    );}
}