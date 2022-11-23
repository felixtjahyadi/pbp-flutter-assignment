import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/pages/mywatchlist_page.dart';

class MyWatchListDetail extends StatefulWidget{
  const MyWatchListDetail({super.key, required this.myWatch});
  final MyWatchListItem myWatch;
  @override
  State<MyWatchListDetail> createState() => _MyWatchListDetailState();
}

class _MyWatchListDetailState extends State<MyWatchListDetail> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                Column(children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.myWatch.fields.title,
                      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ]),
              Column(
              children: [
                Row(children: [
                  const Text('Release Date: ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(widget.myWatch.fields.releaseDate.toString().substring(0,10))
                ],),
                Row(children: [
                  const Text("Rating: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(widget.myWatch.fields.rating.toString())
                ],),
                Row(children: [
                  const Text("Status: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(widget.myWatch.fields.watched
                  ? "watched"
                  : "not watched")
                ],),
                Row(children: const [
                  Text("Review: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ]),
                Row(children:[
                  Flexible(child: Text(widget.myWatch.fields.review))]
                )
              ],
            ),
              ]
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWatchListPage()));
                    }, 
                  child: Text('Back',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  )
              ],)
          ],
        ),
        ),
    );
  }
}

