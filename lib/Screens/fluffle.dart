// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:proof/Utilis/common.dart';
// import 'package:proof/Utilis/contants.dart';
// import 'package:proof/Utilis/theme.dart';
// import 'package:provider/provider.dart';

// class FluFlleScreen extends ConsumerWidget {
//   final counterProvider = StateProvider<int>((ref) {
//     return 12;
//   });
//   late int currentIndex = 0;
//   List<String> images = [
//     "assets/images/mountain3.jpg",
//     "assets/images/mountain1.jpg",
//   ];

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var _mediaQuery = MediaQuery.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         elevation: 5,
//         backgroundColor: Colors.white,
//         toolbarHeight: _mediaQuery.size.height / 10,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(
//                 // right: 10,
//                 ),
//             child: Container(
//               width: Common.displayWidth(context) * 1,
//               height: 20,
//               // color: Colors.amber,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     Images.maskgroup,
//                     scale: 2.6,
//                   ),
//                   SizedBox(
//                     width: Common.displayWidth(context) * 0.32,
//                   ),
//                   GestureDetector(
//                       onTap: () {
//                         // Navigator.pushNamed(context, "/CreatePost");
//                         ref.read(counterProvider.notifier).state++;
//                       },
//                       child: Image.asset(
//                         Images.plusbasicicon,
//                         scale: 3,
//                       )),
//                   SizedBox(
//                     width: Common.displayWidth(context) * 0.07,
//                   ),
//                   Image.asset(
//                     Images.searchicon,
//                     scale: 3,
//                   ),
//                   // SizedBox(
//                   //   width: Common.displayWidth(context) * 0.01,
//                   // ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: GestureDetector(
//           onTap: () {
//             // Navigator.of(context)
//             //     .push(MaterialPageRoute(builder: (context) => FindFriends()));
//           },
//           child: Consumer(builder: (context, ref, _) {
//             final count = ref.watch(counterProvider);
//             return Column(
//               children: [
//                 Container(
//                   height: Common.displayHeight(context) * 0.07,
//                   width: Common.displayWidth(context) * 1,
//                   color: const Color.fromRGBO(8, 174, 158, 1),
//                   child: Center(
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(context, "/AddFriends");
//                       },
//                       child: Text(
//                         'FLUFFLE  $count',
//                         style: const TextStyle(
//                             fontSize: 25,
//                             color: Color.fromRGBO(255, 255, 255, 1)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 20, right: 20),
//                   child: ListTile(
//                       contentPadding: EdgeInsets.zero,
//                       leading: CircleAvatar(
//                           radius: 30.0,
//                           backgroundColor: Colors.yellow,
//                           backgroundImage: AssetImage(Images.avatarman)),
//                       title: Text(
//                         'Profile Name',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       subtitle: Text(
//                         '3m ago',
//                         style: TextStyle(
//                             fontSize: 11, color: Color.fromRGBO(0, 0, 0, 1)),
//                       ),
//                       textColor: Color.fromRGBO(0, 0, 0, 1),
//                       trailing: Icon(
//                         Icons.more_vert,
//                         color: AppColors.black,
//                         size: 25,
//                       )),
//                 ),
//                 Column(
//                   children: [
//                     SizedBox(
//                       height: Common.displayHeight(context) * 0.3,
//                       width: double.infinity,
//                       child: PageView.builder(
//                           onPageChanged: (index) {
//                             // setState(() {
//                             //   currentIndex = index;
//                             // });
//                           },
//                           itemCount: images.length,
//                           itemBuilder: (context, index) {
//                             return SizedBox(
//                               height: Common.displayHeight(context) * 0.5,
//                               width: double.infinity,
//                               child: Image.asset(
//                                 images[index],
//                                 fit: BoxFit.cover,
//                               ),
//                             );
//                           }),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         for (var i = 0; i < images.length; i++)
//                           buildIndicator(currentIndex == i)
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 1),
//                       child: Row(
//                         children: [
//                           const SizedBox(
//                             width: 20,
//                           ),
//                           Image.asset(
//                             Images.crticon,
//                             scale: 3,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Text('3334'),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           Image.asset(
//                             Images.cmticon,
//                             scale: 3,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           const Text('200'),
//                           SizedBox(
//                             width: Common.displayWidth(context) * 0.47,
//                           ),
//                           Image.asset(
//                             Images.shareicon,
//                             scale: 3,
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Text(
//                         textDirection: TextDirection.rtl,
//                         Constants.midLoremIpsum,
//                         style: TextStyle(
//                             fontSize: 13, fontWeight: FontWeight.w600),
//                         textAlign: TextAlign.center),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 20, right: 20),
//                       child: ListTile(
//                           contentPadding: EdgeInsets.zero,
//                           leading: CircleAvatar(
//                               radius: 30.0,
//                               backgroundColor: Colors.yellow,
//                               backgroundImage: AssetImage(Images.avatarman)),
//                           title: Text(
//                             'Profile Name',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Text(
//                             '3m ago',
//                             style: TextStyle(
//                                 fontSize: 11,
//                                 color: Color.fromRGBO(0, 0, 0, 1)),
//                           ),
//                           textColor: Color.fromRGBO(0, 0, 0, 1),
//                           trailing: Icon(
//                             Icons.more_vert,
//                             color: AppColors.black,
//                             size: 25,
//                           )),
//                     ),
//                     SizedBox(
//                       height: Common.displayHeight(context) * 0.3,
//                       width: double.infinity,
//                       child: PageView.builder(
//                           onPageChanged: (index) {
//                             // setState(() {
//                             //   currentIndex = index;
//                             // });
//                           },
//                           itemCount: images.length,
//                           itemBuilder: (context, index) {
//                             return SizedBox(
//                               height: 400,
//                               width: double.infinity,
//                               child: Image.asset(
//                                 images[index],
//                                 fit: BoxFit.cover,
//                               ),
//                             );
//                           }),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         for (var i = 0; i < images.length; i++)
//                           buildIndicator(currentIndex == i)
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     // Padding(
//                     //   padding: const EdgeInsets.symmetric(horizontal: 1),
//                     //   child: Row(
//                     //     children: [
//                     //       SizedBox(
//                     //         width: 20,
//                     //       ),
//                     //       Image(image: AssetImage('assets/Carrot.png')),
//                     //       SizedBox(
//                     //         width: 10,
//                     //       ),
//                     //       Text('3334'),
//                     //       SizedBox(
//                     //         width: 10,
//                     //       ),
//                     //       Image(image: AssetImage('assets/Comment.png')),
//                     //       SizedBox(
//                     //         width: 10,
//                     //       ),
//                     //       Text('200'),
//                     //       SizedBox(
//                     //         width: Common.displayWidth(context) * 0.45,
//                     //       ),
//                     //       Image(image: AssetImage('assets/Awesome.png'))
//                     //     ],
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ],
//             );
//           }),
//         ),
//       ),
//       //     appBar: AppBar(
//       //   backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//       //   toolbarHeight: _mediaQuery.size.height / 8.5,
//       //       title: Row(
//       //         mainAxisAlignment: MainAxisAlignment.start,
//       //         children: [
//       //           Image(image: AssetImage('assets/MaskGroup.png',),fit: BoxFit.contain,),Container(
//       //             padding: EdgeInsets.all(8),child: Text('szedgbfds'),
//       //           )
//       //         ],
//       //       ),
//       // )
//     );
//   }

//   //////////  dots indicator

//   Widget buildIndicator(bool isSelected) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 2),
//       child: Container(
//         height: isSelected ? 12 : 8,
//         width: isSelected ? 12 : 8,
//         decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isSelected
//                 ? const Color.fromRGBO(8, 174, 158, 1)
//                 : Colors.grey),
//       ),
//     );
//   }
// }
