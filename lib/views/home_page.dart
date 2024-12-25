import 'package:flutter/material.dart';
import 'package:myapp/core/constants/images_strings.dart';
import 'package:myapp/views/add_app_page.dart';

import '../core/utils/screen_size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize screen size
    SizeUtil.init(context);

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          child: IconButton(
            icon: const Icon(Icons.menu, color: Colors.black), // Icône noire
            onPressed: () {
              debugPrint('Menu clicked');
            },
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning',
                  style: TextStyle(
                    fontFamily: 'Rotunda',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Josué LASSEY',
                  style: TextStyle(
                    fontFamily: 'Rotunda',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                tAvatarImage,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Apps List',
                    style: TextStyle(
                      fontFamily: 'Rotunda',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddAppPage(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: SizeUtil.widthPercentage(55),
                    height: SizeUtil.heightPercentage(47.6),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 244, 248),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                //padding: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    tGoogleCalendarImage,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 45,
                            width: 200,
                            // decoration: BoxDecoration(
                            //   color: Colors.white,
                            //   borderRadius: BorderRadius.circular(15),
                            // ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Google calendar",
                                  style: TextStyle(
                                    fontFamily: 'Rotunda',
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Last synced ',
                                        style: TextStyle(
                                          fontFamily: 'Rotunda',
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '5 mins ago',
                                        style: TextStyle(
                                          fontFamily: 'Rotunda',
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Upcoming events',
                                style: TextStyle(
                                  fontFamily: 'Rotunda',
                                  fontSize: 12.5,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 20,
                                height: 20,
                                //padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 194, 193, 193),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 200,
                            height: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '12Am - 15Pm',
                                    style: TextStyle(
                                      fontFamily: 'Rotunda',
                                      fontSize: 12,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  const Text(
                                    'Meeting with team',
                                    style: TextStyle(
                                      fontFamily: 'Rotunda',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        child: Stack(
                                          children: [
                                            buildProfilePicture(
                                              const AssetImage(
                                                tTeamsAvatarImage3,
                                              ),
                                              0,
                                            ),
                                            buildProfilePicture(
                                              const AssetImage(
                                                tTeamsAvatarImage1,
                                              ),
                                              18,
                                            ),
                                            buildProfilePicture(
                                              const AssetImage(
                                                tTeamsAvatarImage2,
                                              ),
                                              39,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4.8),
                                          child: Image.asset(
                                            tNextIcon,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 141, 70, 233),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    //const Spacer(),
                                    Icon(
                                      Icons.edit_calendar_outlined,
                                      color: Colors.white,
                                      size: 15.5,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Schudule a meeting',
                                      style: TextStyle(
                                        fontFamily: 'Rotunda',
                                        fontSize: 12.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        width: SizeUtil.widthPercentage(33.8),
                        height: SizeUtil.heightPercentage(23),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 244, 248),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 45),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image.asset(tGoogleMeetImage),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Google meet',
                              style: TextStyle(
                                fontFamily: 'Rotunda',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Not connected',
                              style: TextStyle(
                                fontFamily: 'Rotunda',
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 100,
                              height: 25,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 141, 70, 233),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                    fontFamily: 'Rotunda',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: SizeUtil.widthPercentage(33.8),
                        height: SizeUtil.heightPercentage(23),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 244, 248),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  tNotionImage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Notion',
                              style: TextStyle(
                                fontFamily: 'Rotunda',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'connected',
                              style: TextStyle(
                                fontFamily: 'Rotunda',
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 100,
                              height: 25,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 208, 212, 221),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  'Review',
                                  style: TextStyle(
                                    fontFamily: 'Rotunda',
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: SizeUtil.heightPercentage(50),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 244, 248),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            // decoration: BoxDecoration(
                            //   color: Colors.white,
                            //   borderRadius: BorderRadius.circular(10),
                            // ),
                            child: Image.asset(tMicrosoftTeamsImage),
                          ),
                          const Spacer(),
                          Container(
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(235, 39, 119, 74),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: Center(
                                child: Row(
                                  children: [
                                    const Text(
                                      'Connected',
                                      style: TextStyle(
                                        fontFamily: 'Rotunda',
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 2),
                                    Image.asset(
                                      tLinkLogo,
                                      width: 18,
                                      height: 15,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Product review',
                        style: TextStyle(
                          fontFamily: 'Rotunda',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Last synced ',
                              style: TextStyle(
                                fontFamily: 'Rotunda',
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: '5 mins ago',
                              style: TextStyle(
                                fontFamily: 'Rotunda',
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildProfilePicture(ImageProvider imageProvider, double offset) {
  return Transform.translate(
    offset: Offset(offset, 0),
    child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 2),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
