import 'dart:ffi';

import 'package:astrology/HattpCalls/ApiService.dart';
import 'package:astrology/HomeScreen/Model/AstrologerListModel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<AstrologerListModel> dataList = List.empty(growable: true);
  TextEditingController searchController = TextEditingController();
   List<AstrologerListModel>? model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
    // setObservers();
    // ApiService().fetchData();
  }

  void _getData() async {
    model = (await ApiService().fetchData());
    debugPrint('Test' + model![0].toString());
  }

  void setObservers() {
    ApiService().astroList.stream.listen((resp) {
       setState(() {
         dataList = resp;
       });

    });
  }
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    if(dataList == null){
       return CircularProgressIndicator();
    }else {
      return

        Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              actions: []),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    cursorColor: Colors.black,
                    controller: searchController,
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(30))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(30))),
                        prefixIcon: Icon(Icons.search_sharp),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(30)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Astrologers',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10)),
                                border:
                                Border.all(width: 0.5, color: Colors.black)),
                            child: const Text(
                              'View More',
                              style: TextStyle(color: Colors.black,
                                  fontSize: 12),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: model?.length,
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color.fromRGBO(
                                    128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  // backgroundImage: AssetImage(
                                  //   'assets/images/harry.png',
                                  // ),
                                  backgroundColor: Colors.transparent,
                                  child: FadeInImage(
                                    image: NetworkImage(model?[index].profileImage.toString() ??""),
                                    // placeholder:Icon(Icons.person),
                                    imageErrorBuilder:
                                        (context, error, stackTrace) {
                                      return Icon(Icons.person);
                                    },
                                    fit: BoxFit.fitWidth, placeholder: AssetImage(""),
                                  ),
                                ),
                              ),
                              Text(
                                model?[index].name.toString() ?? "NA",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          padding:  EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              color:  Color.fromARGB(255, 241, 197, 130),
                              border: Border.all(
                                  color: Color.fromARGB(255, 248, 142, 4)),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(18))),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                // child: Image.asset("assets/images/discount.png"),
                                child: Icon(
                                  Icons.discount,
                                  size: 50,
                                  color: Color.fromARGB(255, 248, 142, 4),
                                ),
                                backgroundColor: Colors.transparent,
                              ),
                              Text("DISCOUNT",style: TextStyle(fontSize:10,color:Colors.orange),)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Treanding Now',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10)),
                                border:
                                Border.all(width: 0.5, color: Colors.black)),
                            child: const Text(
                              'View More',
                              style: TextStyle(color: Colors.black,
                                  fontSize: 12),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: model?.length ,
                      itemBuilder: (context, index) {

                        return Container(
                          width: 130 ,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color.fromRGBO(
                                    128, 128, 128, 0.4),
                                child: CircleAvatar(
                                  radius: 28,
                                  // backgroundImage: AssetImage(
                                  //   'assets/images/harry.png',
                                  // ),
                                  backgroundColor: Colors.transparent,
                                  child: FadeInImage(
                                    image: NetworkImage(model?[index].profileImage.toString() ??""),
                                    // placeholder:Icon(Icons.person),
                                    imageErrorBuilder:
                                        (context, error, stackTrace) {
                                      return Icon(Icons.person);
                                    },
                                    fit: BoxFit.fitWidth, placeholder: AssetImage(""),
                                  ),
                                ),
                              ),
                              Text(
                                model?[index].name.toString() ?? "Data not found",
                                style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    "Exp.: ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "${model?[index].experienceInYears} years" ?? "0",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    "lang.:      ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Expanded(
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      model?[index].languageKnown.toString()?? "NA",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    "₹",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    model?[index].charge.toString() ?? "NA",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }
}
