import 'package:flutter/material.dart';

void main() 
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: id_card(),
    );
  }
}

class id_card extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
          'Digital ID Card',
          style: TextStyle
          (
            fontWeight:FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      

      body: Center
      (
        child: Card
        (
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(15),
            ),
          color: Colors.white,

        child: Container
        (
          width: 400,
          height: 450,
        
          child: Column
          (
            children: 
            [
              SizedBox(height:25),
              Container(
                padding: EdgeInsets.all(4),
                decoration:BoxDecoration
                (
                  color:Colors.pinkAccent,
                  shape: BoxShape.circle,
                ),

                child:CircleAvatar
                (
                  radius: 50,
                  backgroundImage: NetworkImage('https://i.postimg.cc/ZYx1rdR5/Tisha.jpg',
                ),
              ),
              ),
              SizedBox(height: 20),
          
              Text
              (
                'Tisha Sarker',
                style: TextStyle(fontSize:25, fontWeight: FontWeight.bold ),
              ),
              Text
              (
                'Batch:61th, Section: B\n  Department of CSE',
                style: TextStyle(fontSize:18, fontWeight: FontWeight.normal ),
              ),
              Divider(),
              ListTile
              (
                leading: Icon(Icons.badge,color:Colors.black),
                title: Text('ID:0182310012101057'),
              ),
              ListTile
              (
                leading: Icon(Icons.email,color:Colors.black),
                title: Text('Email:Tisha057@gmail.com'),
              ),
              ListTile
              (
                leading: Icon(Icons.phone,color:Colors.black),
                title: Text('Phone: 01784473716'),
              ),
            ],
            ),
          ),
        ),
        ),
      );
  }
}