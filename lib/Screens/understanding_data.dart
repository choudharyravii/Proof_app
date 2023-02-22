import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proof/Api/fetch_api_data.dart';
import 'package:proof/Model/understand_data_model.dart';

class UnderStandingData extends StatefulWidget {
  const UnderStandingData({super.key});

  @override
  State<UnderStandingData> createState() => _UnderStandingDataState();
}

class _UnderStandingDataState extends State<UnderStandingData> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await FetchApi.fetchdata();
                    setState(() {});
                  },
                  child: const Text('ok'),
                ),
                // Container(
                //   child: loading
                //       ? CircularProgressIndicator()
                //       : responsedata != null
                //           ? Text(
                //               responsedata['data'][5]['name'].toString(),
                //               style: TextStyle(color: Colors.black),
                //             )
                //           : null,
                // ),
                FutureBuilder<UnderStandingModel>(
                    future:  FetchApi.fetchdata() ,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Expanded(
                          child: ListView.builder(
                              itemCount: snapshot.data!.data!.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  tileColor: Color(int.parse(
                                      "0xff${snapshot.data!.data![index].color.toString().split("#")[1]}")),
                                  leading: Text(snapshot.data!.data![index].id
                                      .toString()),
                                  title: Text(snapshot.data!.data![index].name
                                      .toString()),
                                  trailing: Text(snapshot
                                      .data!.data![index].name
                                      .toString()),
                                );
                              }),
                        );
                      } else if (snapshot.hasError) {
                        return const Center(
                          child: Text('Some Error'),
                        );
                      } else {
                        return const Center(
                          child:  CircularProgressIndicator(),
                        );
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
