import 'package:flutter/material.dart';
import 'package:post_viewer/services/api_service.dart';
import 'package:post_viewer/widget/postcard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  void initState() {
    // TODO: implement initState
    ApiService().fetchpost();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("All posts"),
        
      ),
      body: StreamBuilder<Object>(
        stream: null,
      
        builder: (context, snapshot) {
          if(snapshot.hasError){
          return Center(child: Text('Error: ${snapshot.error}'));
          }
          else if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
         
else{
  
          return ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
            return PostCards();
          },);
        }
        }
      ),
    );
  }
}