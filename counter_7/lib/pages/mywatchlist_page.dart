import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/utils/fetchmywatchlist.dart';
import 'package:counter_7/pages/mywatchlist_details.dart';

class MyWatchListPage extends StatefulWidget{
  const MyWatchListPage({Key? key}) : super(key:key);
  @override
  MyWatchListPageState createState() => MyWatchListPageState();
}

class MyWatchListPageState extends State<MyWatchListPage>{
  late Future<List<MyWatchListItem>> mywatchlist;

  @override
  void initState(){
    super.initState();
    mywatchlist = fetchWatchList();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const MyDrawer(),
      body: FutureBuilder(
        future: mywatchlist,
        builder: (context, AsyncSnapshot snapshot){
          if (snapshot.data == null){
            return const Center(child: CircularProgressIndicator(),);
          }
          else {
            if (!snapshot.hasData){
              return Column(children: const[Text('Tidak ada WatchList')],);
            }
            else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => 
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 12
                  ),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: ((snapshot.data![index].fields.watched)
                        ? Colors.green
                        : Colors.red),
                        blurRadius: 2.0,
                      )
                    ]
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => MyWatchListDetail(
                            myWatch: snapshot.data![index]
                          )
                          )
                        );
                    },
                    child: Row(
                    children: [
                      Checkbox(
                        value: snapshot.data![index].fields.watched, 
                        onChanged: (bool? value){
                          setState(() {
                            snapshot.data![index].fields.watched = !snapshot.data![index].fields.watched;
                          });
                        }
                        ),
                      Expanded(
                        child: Text('${snapshot.data![index].fields.title}',
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        )
                    ],
                  ),
                  )
                )
                );
            }
          }
        },
      ),
    );
  }
}

