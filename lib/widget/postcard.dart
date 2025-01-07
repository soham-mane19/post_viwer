import 'package:flutter/material.dart';

class PostCards extends StatelessWidget {
  const PostCards({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black45)
      ),
      child: Column(
        children: [
           Row(
            children: [
             Text("Author",),
             const SizedBox(
              width: 3,
             ),
              Text("community",),
               const SizedBox(
              width: 3,
             ),
              Text("time",),
            ],
           ),
           const SizedBox(
            height: 5,
           ),
           Row(
            children: [
              Image.network("url"),
              const SizedBox(
                width: 8,
              ),
              Column(
                children: [
                    Text("time",),
                    const SizedBox(
                      height: 10,
                    ),
                     Text("Description",),
                     const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.thumb_up),
                        Text("votes count"),
                        const SizedBox(
                          height: 10,
                        ),
                        Icon(Icons.comment),
                      Text("comments count"),
                      ],
                    ),


                ],
              )
            ],
           )
        ],
      ),
    );
  }
}