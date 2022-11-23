import 'package:counter_7/pages/form.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/widgets/drawer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFormPage(),
    );
  }
}

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  List<Widget> listData = [];

  void addData() {
    setState(() {
      for (var i = 0; i < MyFormPageState.dataItem.length; i++) {
        Data items = MyFormPageState.dataItem[i];
        listData.add(Center(
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('${items.judul_budget}'),
                  trailing: Text('${items.tanggal}'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${items.nomimal_budget}'),
                      Text('${items.jenis_budget}')
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (listData.isEmpty) {
      addData();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      // Menambahkan drawer menu
      drawer: MyDrawer(),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: listData,
            ),
          ),
        )
      ]),
    );
  }
}
