import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Text(
          "Tracks",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    "https://i.ebayimg.com/images/g/hw0AAOSwi6VjWCZf/s-l400.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Track ${index + 1}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Artist ${index + 1}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
