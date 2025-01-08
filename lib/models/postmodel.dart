class Post {
  final String title;
  final String author;
  final String community;
  final String time;
  final String shortDescription;
  final String imageUrl;
  final int votesCount;
  final int commentsCount;

  Post({
    required this.title,
    required this.author,
    required this.community,
    required this.time,
    required this.shortDescription,
    required this.imageUrl,
    required this.votesCount,
    required this.commentsCount,
  });

  // Factory constructor to create a Post from JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'] ?? "no title",
      author: json['author'] ?? "no author",
      community: json['community'] ?? "no community",
      time: json['created'] ?? "no time",  // Use the actual logic to format the time
      shortDescription: json['body'].substring(0, 30) ?? "no body",
      imageUrl: json["json_metadata"]['image'][0] ?? 'https://source.unsplash.com/random/150x150',
      votesCount: json['stats']['total_votes'] ?? 0,
      commentsCount: json['children'] ?? 0,
    );
  }
}
