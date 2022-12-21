import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailberitascreen extends StatefulWidget {
  const detailberitascreen({super.key});

  @override
  _DetailBeritaScreenState createState() => _DetailBeritaScreenState();
}

class _DetailBeritaScreenState extends State<detailberitascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Berita'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.grey[200],
              child: Image.network(
                  'https://akcdn.detik.net.id/community/media/visual/2022/11/22/ferdy-sambo-jalani-sidang-lanjutan-putri-hadir-virtual-gegara-covid-19-3_169.jpeg?w=700&q=90'),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('title'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('content'),
                  Divider(),
                  Text('Autor'),
                  Text('Sumber'),
                ],
              ),
            )
          ],
        ));
  }
}
