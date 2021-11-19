import 'package:flutter/material.dart';
import 'package:get_method_api/api.dart';
import 'package:get_method_api/api.dart';
import 'package:get_method_api/model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  getData alldata = getData();
  Model model = Model();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data'),
      ),
      body: FutureBuilder<Model?>(
        future: alldata.getApiData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              padding: EdgeInsets.all(5),
                itemCount: snapshot.data!.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                      NetworkImage('${snapshot.data!.data![index].avatar}'),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text('${snapshot.data!.data![index].email}'),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

