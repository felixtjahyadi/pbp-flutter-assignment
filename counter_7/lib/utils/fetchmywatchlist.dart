import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';

Future<List<MyWatchListItem>> fetchWatchList() async {
  var url = Uri.parse(
    "http://tugaspbp2.herokuapp.com/mywatchlist/json"
  );
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchListItem> listOfWatchList = [];
  for (var d in data) {
    if (d != null){
      listOfWatchList.add(MyWatchListItem.fromJson(d));
    }
  }
  return listOfWatchList;
}

