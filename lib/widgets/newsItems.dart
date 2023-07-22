import 'package:flutter/material.dart';
import 'package:task1/models/news.dart';

class NewsItemCard extends StatelessWidget {
  const NewsItemCard({
    super.key,
    required this.newsItem,
  });

  final NewsItem newsItem;

  @override
  Widget build(BuildContext context) {
 
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.width * 0.3,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.network(
            newsItem.image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsItem.category,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                    fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 10),
              Text(
                (newsItem.title),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      newsItem.ownerImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    newsItem.ownerName,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(width: 5),
                  const CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.black38,
                  
                  ),
                  const SizedBox(width: 5),
                  Text(
                    newsItem.createdAt,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600
                    ),
                   
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
