import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  TextEditingController _searchController = new TextEditingController();

  List storyList=[
    {
      "name": "Samikshya",
      "imageUrl": "images/img2.JPG",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Supriya",
      "imageUrl": "images/img3.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Ganga",
      "imageUrl": "images/img4.jpg",
      "isOnline": true,
      "hasStory": false,
    },
    {
      "name": "Jamuna",
      "imageUrl": "images/img5.jpg",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Anish",
      "imageUrl": "images/img6.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Ramesh",
      "imageUrl": "images/img3.jpg",
      "isOnline": false,
      "hasStory": true,
    } 

  ];
List conversationList = [
    {
      "name": "Samikshya",
      "imageUrl": "images/img2.JPG",
      "isOnline": true,
      "hasStory": true,
      "message": "Where are you?",
      "time": "5:00 pm"
    },
    {
      "name": "Supriya",
      "imageUrl": "images/img3.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "It's good!!",
      "time": "7:00 am"
    },
    {
      "name": "Ganga",
      "imageUrl": "images/img4.jpg",
      "isOnline": true,
      "hasStory": false,
      "message": "I miss you",
      "time": "6:50 am"
    },
    {
      "name": "Jamuna",
      "imageUrl": "images/img5.jpg",
      "isOnline": true,
      "hasStory": true,
      "message": "Have a safe journey",
      "time": "yesterday"
    },
    {
      "name": "Anish",
      "imageUrl": "images/img6.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Sorry",
      "time": "2nd Feb"
    },
    {
      "name": "Ramesh",
      "imageUrl": "images/img3.jpg",
      "isOnline": false,
      "hasStory": true,
      "message": "Hello",
      "time": "28th Jan"
    },
    {
      "name": "Anusha",
      "imageUrl": "images/img3.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Hahahahahaha",
      "time": "25th Jan"
    },
    {
      "name": "Samikshya",
      "imageUrl": "images/img5.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Where are you?",
      "time": "15th Jan"
    }
  ];

  _stories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe9eaec)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 33,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 75,
                  child: Align(
                      child: Text(
                    'Your Story',
                    overflow: TextOverflow.ellipsis,
                  )),
                )
              ],
            ),
          ),
          Row(
              children: List.generate(storyList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: Stack(
                      children: <Widget>[
                        storyList[index]['hasStory']
                            ? Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blueAccent, width: 3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                storyList[index]['imageUrl']),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              )
                            : Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            storyList[index]['imageUrl']),
                                        fit: BoxFit.cover)),
                              ),
                        storyList[index]['isOnline']
                            ? Positioned(
                                top: 38,
                                left: 42,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF66BB6A),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xFFFFFFFF), width: 3)),
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 75,
                    child: Align(
                        child: Text(
                      storyList[index]['name'],
                      overflow: TextOverflow.ellipsis,
                    )),
                  )
                ],
              ),
            );
          }))
        ],
      ),
    );
  }

  _conversations(BuildContext context){
   return Column(
      children: List.generate(conversationList.length, (index) {
        return InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: <Widget>[
                      conversationList[index]['hasStory'] ? 
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.blueAccent, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        conversationList[index]['imageUrl']),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                      : Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    conversationList[index]['imageUrl']),
                                fit: BoxFit.cover)),
                      ),
                      conversationList[index]['isOnline']
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xFF66BB6A),
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Color(0xFFFFFFFF), width: 3)),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      conversationList[index]['name'],
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 135,
                      child: Text(
                        conversationList[index]['message'] +
                            " - " +
                            conversationList[index]['time'],
                        style: TextStyle(
                            fontSize: 15, color: Color(0xFF000000).withOpacity(0.7)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.0,right: 20.0, top: 15.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.0, height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(
                        image: AssetImage('images/img6.jpg'),
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.edit),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextField(
                cursorColor: Color(0xFF000000),
                controller: _searchController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF000000).withOpacity(0.5),
                    ),
                    hintText: "Search",
                    border: InputBorder.none),
              ),

                ),
                SizedBox(
                  height: 20.0,
                ),
                _stories(),
                SizedBox(height: 20.0,),
                _conversations(context),
              
            ],
          ),
        ),
        ),
    );
  }
}
