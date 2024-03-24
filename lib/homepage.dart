import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:final_640710553/helpers/dialog_utils.dart';
import 'package:final_640710553/helpers/my_list_tile.dart';
import 'package:final_640710553/helpers/my_text_field.dart';

import 'package:final_640710553/models/model.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get child => null;
  List<Photo>? _photo;
  var dio;
  
  @override
  Widget build(BuildContext context) {
final TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // กำหนดความสูงของ AppBar เป็น 100
          
        child: AppBar(
          centerTitle: true,
        // title: Text(widget.title),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,            
          children: <Widget>[    
            Text(
              'Webby Fondue',
              style: TextStyle(
                color: const Color.fromARGB(255, 26, 24, 32),
                fontSize: 20.0,
              ),
            ),
            Text(
              'ระบบรายงานเว็บต่างๆ',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),      
    ),  
    backgroundColor: Color.fromARGB(255, 63, 237, 182),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      
      child: Column(
        children: [
          // var dio = Dio(BaseOptions(responseType: ResponseType.plain));
          //   var response =
          //       await dio.get('https://cpsu-api-49b593d4e146.herokuapp.com/api/2_2566/final/web_types');
          //   // print('Status code: ${response.statusCode}');
          //   response.headers.forEach((title, values) {
             
          //   });

          SizedBox(height:10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Text("*ต้องกรอกข้อมูล"),
            ], 
          ),
          SizedBox(height:10.0),
          MyTextField(
            controller: _controller,hintText: 
            'URL*',
          ),
          SizedBox(height:10.0),
           MyTextField(
            controller: _controller,hintText: 
            'รายละเอียด',
          ),
          SizedBox(height:10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("ระบุประเภทเว็บเลว*"),
            ], 
          ),
          SizedBox(height:10.0),
          
          MyListTile(
            title: 'Title',
            subtitle: 'Subtitle',
            imageUrl: 'https://example.com/image.jpg',
            selected: true,
            onTap: () {
              // ทำอะไรก็ตามเมื่อคลิกที่ MyListTile
              print('MyListTile is tapped!');
            },
          ),
          SizedBox(height: 10.0,),
           MyListTile(
            title: 'Title',
            subtitle: 'Subtitle',
            imageUrl: 'https://example.com/image.jpg',
            selected: true,
            onTap: () {
              // ทำอะไรก็ตามเมื่อคลิกที่ MyListTile
              print('MyListTile is tapped!');
            },
          ),SizedBox(height: 10.0,),
           MyListTile(
            title: 'Title',
            subtitle: 'Subtitle',
            imageUrl: 'https://example.com/image.jpg',
            selected: true,
            onTap: () {
              // ทำอะไรก็ตามเมื่อคลิกที่ MyListTile
              print('MyListTile is tapped!');
            },
          ),
          SizedBox(height: 10.0,),
           MyListTile(
            title: 'Title',
            subtitle: 'Subtitle',
            imageUrl: 'https://example.com/image.jpg',
            selected: true,
            onTap: () {
              // ทำอะไรก็ตามเมื่อคลิกที่ MyListTile
              print('MyListTile is tapped!');
            },
          ),
          
          Expanded(

            child: _photo == null
              ? SizedBox.shrink() : 
              ListView.builder(
              itemCount: _photo!.length,
              itemBuilder: (context, index) {
              var anime = _photo![index];
                return ListTile(
                  title: Text(anime.title ?? ''),
                  subtitle: Text(anime.subtitle ?? ''),
                  trailing: anime.image == ''
                      ? null
                      : Image.network(
                          anime.image ?? '',
                          errorBuilder: (context, error, stackTrace) {
                                  // if error, show icon error
                          return Icon(Icons.error,
                            color: Color.fromARGB(255, 54, 136, 244));
                            },
                        ),
                  onTap: () {
                    print('You click ${anime.title}');
                        
                  },
                );
              },
            ),
          ),
        ],   
      ),  
       
          
    ),
     
    );
  }
  
}
