// ignore_for_file: prefer_const_constructors, must_be_immutable, no_logic_in_create_state, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, unused_import, unnecessary_string_escapes
import 'package:api/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:map_launcher/map_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:api/modelclass.dart';
import 'package:maps_launcher/maps_launcher.dart';
// imporequired Type key, id, id, rt 'package:profile/grid/grid.dart';

class Profile extends StatefulWidget {
  // List idOfEmployee;
  //int ID;
  // ignore: use_key_in_widget_constructors, non_constant_identifier_names
  //Profile({Key? key, required this.idOfEmployee, required this.ID})
  //  : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var size, height, width;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: FutureBuilder<List>(
          future: context.read<DataProvider>().datalist,
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 332,
                      width: 227,
                      child: Card(
                        color: Color.fromRGBO(253, 237, 235, 1),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.west),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height - 600,
                              width: MediaQuery.of(context).size.width,
                              child: Column(children: [
                                CircleAvatar(
                                    radius: 85.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 80.0,
                                      backgroundImage: NetworkImage(
                                        snapshot
                                                .data![context
                                                    .read<DataProvider>()
                                                    .currentUser]
                                                .profileImage ??
                                            '',
                                        // widget
                                        // .idOfEmployee[widget.ID].profileImage ??
                                      ),
                                    )),
                                RichText(
                                    text: TextSpan(
                                        text: snapshot
                                            .data![context
                                                .read<DataProvider>()
                                                .currentUser]
                                            .name, // '${widget.idOfEmployee[widget.ID].username ?? ''}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            color: Colors.black)))
                              ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 332,
                      width: 227,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Profile',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'ID:',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: snapshot
                                          .data![context
                                              .read<DataProvider>()
                                              .currentUser]
                                          .id
                                          .toString(),
                                      // text: "124",
                                      // text: snapshot
                                      //     .data![context
                                      //         .read<DataProvider>()
                                      //         .currentUser]
                                      //     .id,
                                      // '${widget.idOfEmployee[widget.ID].id ?? ''}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          color:
                                              Color.fromRGBO(243, 118, 107, 1)))
                                ]),
                          ),
                          SizedBox(
                            width: 100,
                            child: RichText(
                              text: TextSpan(
                                  text: 'User name:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: snapshot
                                            .data![context
                                                .read<DataProvider>()
                                                .currentUser]
                                            .name,
                                        // '${widget.idOfEmployee[widget.ID].username ?? ''}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                243, 118, 107, 1)))
                                  ]),
                            ),
                          ),
                          SizedBox(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Email:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: snapshot
                                                .data![context
                                                    .read<DataProvider>()
                                                    .currentUser]
                                                .email ??
                                            '',
                                        // text: "hgg",
                                        // '${widget.idOfEmployee[widget.ID].email ?? ''}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                243, 118, 107, 1)))
                                  ]),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Phone:',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: snapshot
                                              .data![context
                                                  .read<DataProvider>()
                                                  .currentUser]
                                              .phone ??
                                          '',
                                      // '${widget.idOfEmployee[widget.ID].phone ?? ''}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          color:
                                              Color.fromRGBO(243, 118, 107, 1)))
                                ]),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Website:',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: snapshot
                                              .data![context
                                                  .read<DataProvider>()
                                                  .currentUser]
                                              .website ??
                                          '',
                                      // '${widget.idOfEmployee[widget.ID].website ?? ''}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          color:
                                              Color.fromRGBO(243, 118, 107, 1)))
                                ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Text('Company',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: Color.fromRGBO(243, 118, 107, 1))),
                RichText(
                  text: TextSpan(
                      text: 'Name:',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Color.fromRGBO(129, 127, 127, 1)),
                      children: [
                        TextSpan(
                            text: snapshot
                                    .data![context
                                        .read<DataProvider>()
                                        .currentUser]
                                    .name ??
                                '',
                            // text:context.read<DataProvider>().updatedata()
                            // '${widget.idOfEmployee[widget.ID].company.name ?? ''}',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 9, 1, 0)))
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text: 'Catch Phrase:',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Color.fromRGBO(129, 127, 127, 1)),
                      children: [
                        TextSpan(
                            text: snapshot
                                    .data![context
                                        .read<DataProvider>()
                                        .currentUser]
                                    .company
                                    .catchPhrase ??
                                '',

                            // '${widget.idOfEmployee[widget.ID].company.catchPhrase ?? ''}',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 12, 1, 0)))
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text: 'Bs:',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Color.fromRGBO(129, 127, 127, 1)),
                      children: [
                        TextSpan(
                            text: snapshot
                                    .data![context
                                        .read<DataProvider>()
                                        .currentUser]
                                    .company
                                    .bs ??
                                '',
                            // '${widget.idOfEmployee[widget.ID].company.bs ?? ''}',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Color.fromARGB(255, 14, 2, 1)))
                      ]),
                ),
                Text('Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: Color.fromARGB(255, 145, 78, 73))),
                Text(
                    snapshot.data![context.read<DataProvider>().currentUser]
                            .address.street ??
                        '',
                    // '${widget.idOfEmployee[widget.ID].address.street ?? ''},${widget.idOfEmployee[widget.ID].address.suite ?? ''},${widget.idOfEmployee[widget.ID].address.city ?? ''},${widget.idOfEmployee[widget.ID].address.zipcode ?? ''}',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                InkWell(
                  onTap: () => MapsLauncher.launchCoordinates(
                      double.parse(snapshot
                              .data![context.read<DataProvider>().currentUser]
                              .address
                              .geo
                              .lat ??
                          ''),

                      //        widget.idOfEmployee[widget.ID].address.geo.lat ?? ''),
                      double.parse(snapshot
                              .data![context.read<DataProvider>().currentUser]
                              .address
                              .geo
                              .lng ??
                          ''),
                      //         widget.idOfEmployee[widget.ID].address.geo.lng ?? ''),
                      'Google Headquarters are here'),
                  child: Image.asset('images/images.jpg'
                      // height: 25,
                      // width: 30,
                      ),
                )
              ],
            );
          }),
    );
  }
}
