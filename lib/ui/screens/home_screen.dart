import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/ui/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Padding(
              padding: EdgeInsets.only(
                left:24,
              ),
              child: Text(
                'Track Parcel',
                style: Theme.of(context).textTheme.headline1,
                ),
            ),
            floating: true,
            snap: false,
            titleSpacing: 0,
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  right: 24),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network('https://images.unsplash.com/photo-1647247033969-e062e0495191?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    ),
                  ),
              ),
            ],
            shadowColor: Colors.transparent,
            expandedHeight: 426,
            backgroundColor: Theme.of(context).appBarTheme.
            backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            flexibleSpace:FlexibleSpaceBar(
              background: Column(
                children:[
                 Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 64
                    ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:[
                       Text('Enter parcel number or scan QR code',
                       style: Theme.of(context).textTheme.headline5,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(
                         top: 7, bottom: 40
                         ),
                         child: Row(
                           children: [
                             Expanded(child: Container(
                               height: 49,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(4),
                                 color: Theme.of(context).backgroundColor,
                               ),
                               child: const TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none
                                 ),
                               ),
                             )
                             ),
                             SizedBox(width: 8,),
                             Container(
                               padding: const EdgeInsets.all(14),
                               width: 50,
                               height: 49,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(4),
                                 color: Theme.of(context).backgroundColor,
                               ),
                               child: SvgPicture.asset(
                                 'assets/images/icon_qrcode.svg'
                               ),
                             ),
                           ],
                         ),
                       ),
                        SizedBox(
                          height: 48,
                          width: double.infinity,
                          child:TextButton(
                            onPressed:(){},
                            child: Text('Track parcel',
                            style: Theme.of(context).textTheme.bodyText1
                            ),
                            style: Theme.of(context).textButtonTheme.style,
                          ),
                        ) ,
                     ],
                   ), 
                 ),
                 ),
                ]
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(
              top: 32
              ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
            Container(
              margin: const EdgeInsets.symmetric(horizontal:24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My parcels',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            )
            ]),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((_,int index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 16),
                child: Container(
                  height: 174,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0,0),
                      ),
                    ],
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '00359007738060313786',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Container(
                          height: 31,
                          width: 78,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/905px-Amazon_logo.svg.png'
                              ))
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'In transit',
                          style: Theme.of(context).textTheme.headline4
                        ),                        
                        Text(
                          'Last update: 3 hours ago',
                          style: Theme.of(context).textTheme.headline6
                        ),
                        Container(
                          height: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2.5),
                            child: LinearProgressIndicator(
                              value: 0.7,
                              color: Theme.of(context).appBarTheme.backgroundColor,
                              backgroundColor: Color(0xFFF8F8F8),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Details',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              SvgPicture.asset('assets/images/icon_details.svg')
                            ],
                          ),
                          Container(
                            height: 1,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ),
              );
            }
              
            )
            )
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}