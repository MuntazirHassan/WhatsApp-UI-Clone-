

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('WatsApp'),
            bottom: const TabBar(
                tabs:[
                  Tab(child: Icon(Icons.camera_alt)),
                  Tab(child:  Text('Chats')),
                  Tab(child:  Text('Status')),
                  Tab(child:  Text('Calls')),

                ]),

            actions:  [
              Icon(Icons.search),
              SizedBox(width: 5),
              PopupMenuButton (
                icon: Icon(Icons.more_vert_sharp),
                  itemBuilder: (context,) => const [
                    PopupMenuItem(
                        value: '1',
                        child:Text('New Group') ),

                    PopupMenuItem(
                        value: '2',
                        child:Text('Settings') ),

                    PopupMenuItem(
                        value: '3',
                        child:Text('log Out') ),
                  ]),

              SizedBox(width: 10),
            ],
          ),

          body:  TabBarView(
              children: [
                TabBarView(
                    children: [
                      const Center(child: Icon(Icons.camera_alt_sharp,size: 35,)),

                      ListView.builder(
                        itemCount: 20,
                          itemBuilder: (context,index){
                          return const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage('https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                            title: Text('MuntaZir'),
                            subtitle: Text('Hello Welcome to my App'),
                            trailing: Text('9:40 pm'),
                          );
                          }),

                      ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context,index){
                            return ListTile(
                              leading:  Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3
                                  )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                ),
                              ),
                              title: Text('Abdullah'),
                              subtitle:  Text('2 mins ago'),
                              trailing: Icon(Icons.more_horiz_sharp),
                            );
                          }),

                      ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context,index){
                            return  ListTile(
                              leading: const CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                              title: Text('Abdullah'),
                              subtitle:  const Row(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Icon(Icons.call_received_sharp,color: Colors.red),
                                  ),
                                  SizedBox(width: 5),
                                  Text('13 mins ago')
                                ],
                              ),
                              trailing: Icon(index /2 ==1? Icons.videocam_sharp: Icons.phone),
                            );
                          })
                    ]),
              ]),
        ),
    );
  }
}
