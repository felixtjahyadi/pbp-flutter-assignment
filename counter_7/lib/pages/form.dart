import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/pages/data.dart';
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

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => MyFormPageState();
}

class MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String? _jenis;
  DateTime _date = DateTime.now();
  List<String> _listJenis = ['Pemasukan', 'Pengeluaran'];
  static List<Data> dataItem = [];

  List<Data> get getDatas {
    return dataItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      drawer: MyDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Judul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Nominal",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = value!.isEmpty ? 0 : int.parse(value);
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = value!.isEmpty ? 0 : int.parse(value);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: DropdownButton(
                    value: _jenis,
                    hint: const Text('Pilih Jenis'),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: _listJenis.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _jenis = newValue!;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                    child: Text('Select Date'),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: _date,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      if (newDate == null) return;
                      setState(() => _date = newDate);
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: const Text(
                            "Simpan",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                          onPressed: () {
                            setState(() {
                              dataItem.add(Data(
                                judul_budget: _judul,
                                nomimal_budget: _nominal,
                                jenis_budget: _jenis!,
                                tanggal: _date,
                              ));
                            });
                            if (_formKey.currentState!.validate()) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 15,
                                      child: Container(
                                        child: ListView(
                                          padding: const EdgeInsets.only(
                                              top: 20, bottom: 20),
                                          shrinkWrap: true,
                                          children: <Widget>[
                                            Center(
                                                child: const Text(
                                                    'Data budget telah berhasil ditambahkan')),
                                            SizedBox(height: 20),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text('Kembali'))
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }
                          },
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Data {
  String judul_budget;
  int nomimal_budget;
  String jenis_budget;
  DateTime tanggal;

  Data({
    required this.judul_budget,
    required this.nomimal_budget,
    required this.jenis_budget,
    required this.tanggal,
  });
}
