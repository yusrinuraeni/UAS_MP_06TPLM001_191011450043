import 'package:berita/cubit/beritacubit.dart';
import 'package:berita/screen/detailberitascreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeritaScreen extends StatefulWidget {
  const BeritaScreen({super.key});

  @override
  State<BeritaScreen> createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  final BeritaCubit beritaCubit = BeritaCubit();

  @override
  void initState() {
    beritaCubit.getDataBerita();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              color: Colors.grey[200],
              height: 100,
              width: 100,
              child: Image.network(
                  'https://akcdn.detik.net.id/community/media/visual/2022/11/22/ferdy-sambo-jalani-sidang-lanjutan-putri-hadir-virtual-gegara-covid-19-3_169.jpeg?w=700&q=90'),
            ),
            title: Text('Sambo'
                /*beritaCubit.beritaModel.results![index].title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),*/
                ),
            subtitle: Text('NEWS'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => DetailBeritaScreen()));
            },
          );
        },
      ),
    );
  }
}
