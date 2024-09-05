import 'package:flutter/material.dart';
import 'package:miprimerappmovil/listadoposts.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Posts'),
      ),
      body: ListView.builder(
        itemCount: listaPost.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(listaPost[index]['id'].toString()),
            ),
            title: Text(listaPost[index]['title']),
            subtitle: Text(listaPost[index]['body']),
          );
        },
      ),
    );
  }
}
