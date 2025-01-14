import 'package:flutter/material.dart';
import 'package:post_viewer/models/postmodel.dart';
import 'package:post_viewer/services/api_service.dart';
import 'package:post_viewer/widget/postcard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late Future<List<Post>> futurepost;
  @override
  void initState() {
    // TODO: implement initState
  futurepost =  ApiService().fetchPosts();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("All posts"),
        
      ),
      body: FutureBuilder<List<Post>>(
        future: futurepost,
      
        builder: (context, snapshot) {
          if(snapshot.hasError){
          return Center(child: Text('Error: ${snapshot.error}'));
          }
          else if (snapshot.connectionState == ConnectionState.waiting) {
            return  Center(child: CircularProgressIndicator());
          }
         
else{
final posts = snapshot.data!;
  
          return ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
            return PostCard(post: posts[index],);
          },);
        }
        }
      ),
    );
  }
}