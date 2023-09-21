// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
//
// class NewsArticleWidget extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imageUrl;
//   final String source;
//   final String date;
//
//   const NewsArticleWidget({
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//     required this.source,
//     required this.date,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(12),
//               topRight: Radius.circular(12),
//             ),
//             child: CachedNetworkImage(
//               imageUrl: imageUrl,
//               height: 150,
//               width: double.infinity,
//               fit: BoxFit.cover,
//               placeholder: (context, url) => Container(
//                 height: 150,
//                 color: Colors.grey, // Placeholder image or background color
//               ),
//               errorWidget: (context, url, error) => Container(
//                 height: 150,
//                 color: Colors.grey, // Error placeholder image or background color
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   description,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.access_time,
//                       size: 16,
//                       color: Colors.grey,
//                     ),
//                     SizedBox(width: 4),
//                     Text(
//                       date,
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Icon(
//                       Icons.public,
//                       size: 16,
//                       color: Colors.grey,
//                     ),
//                     SizedBox(width: 4),
//                     Text(
//                       source,
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
