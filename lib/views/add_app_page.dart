import 'package:flutter/material.dart';
import 'package:myapp/core/constants/images_strings.dart';

import '../core/utils/screen_size.dart';

class AddAppPage extends StatelessWidget {
  const AddAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Add App',
          style: TextStyle(
            fontFamily: 'Rotunda',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                debugPrint('Menu clicked');
                Navigator.pop(context);
              },
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: SizeUtil.heightPercentage(44),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 234, 213),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.asset(
                              tBookImages,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: SizeUtil.widthPercentage(2.8),
                            height: SizeUtil.heightPercentage(1.5),
                            decoration: BoxDecoration(
                              color:  Color.fromARGB(199, 243, 211, 143),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: SizeUtil.widthPercentage(2.8),
                            height: SizeUtil.heightPercentage(1.5),
                            decoration: BoxDecoration(
                              color:  const Color.fromARGB(226, 226, 109, 31),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                           const SizedBox(width: 5),
                           Container(
                            width: SizeUtil.widthPercentage(2.8),
                            height: SizeUtil.heightPercentage(1.5),
                            decoration: BoxDecoration(
                              color:  const Color.fromARGB(199, 243, 211, 143),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Unlock Your Welcome Bonus',
                        style: TextStyle(
                          fontFamily: 'Rotunda',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 44, 43, 43),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: double.infinity,
                        height: 35,
                        child: Text(
                          "Connect your first app and enjoy exclusive benefits! Get extra storage space",
                          style: TextStyle(
                            fontFamily: 'Rotunda',
                            fontSize: 13,
                            color: Color.fromARGB(255, 129, 125, 125),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Connect 2 more to unlock',
                        style: TextStyle(
                          fontFamily: 'Rotunda',
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(230, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 120,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(235, 39, 119, 74),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        tLinkLogo,
                                        width: 23,
                                        height: 16,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 2),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          "5 app",
                                          style: TextStyle(
                                            fontFamily: 'Rotunda',
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // const Center(
                            //   child: Text(
                            //     'Connect',
                            //     style: TextStyle(
                            //       fontFamily: 'Rotunda',
                            //       fontSize: 13,
                            //       color: Colors.black,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeUtil.widthPercentage(41.66),
                        height: SizeUtil.heightPercentage(25.5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 244, 248),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
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
                              const SizedBox(height: 10),
                              const Text(
                                "Google calendar",
                                style: TextStyle(
                                  fontFamily: 'Rotunda',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                width: SizeUtil.widthPercentage(34),
                                height: 33,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 29, 41, 57),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                      fontFamily: 'Rotunda',
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: SizeUtil.widthPercentage(41.66),
                        height: SizeUtil.heightPercentage(25.5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 244, 248),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(
                                    tGoogleMeetImage,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Google meet",
                                style: TextStyle(
                                  fontFamily: 'Rotunda',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                width: SizeUtil.widthPercentage(34),
                                height: 33,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 208, 212, 221),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                235, 39, 119, 74),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "Connected",
                                          style: TextStyle(
                                            fontFamily: 'Rotunda',
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 39, 39, 39),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeUtil.widthPercentage(41.66),
                        height: SizeUtil.heightPercentage(25.5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 244, 248),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Image.asset(
                                    tNotionImage,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Notion",
                                style: TextStyle(
                                  fontFamily: 'Rotunda',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                width: SizeUtil.widthPercentage(34),
                                height: 35,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 208, 212, 221),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                235, 39, 119, 74),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "Connected",
                                          style: TextStyle(
                                            fontFamily: 'Rotunda',
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 39, 39, 39),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: SizeUtil.widthPercentage(41.66),
                        height: SizeUtil.heightPercentage(25.5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 244, 248),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Image.asset(
                                    tGitlab,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Gitlab",
                                style: TextStyle(
                                  fontFamily: 'Rotunda',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                width: SizeUtil.widthPercentage(34),
                                height: 35,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 208, 212, 221),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                235, 39, 119, 74),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                            const Text(
                                              "Connected",
                                              style: TextStyle(
                                                fontFamily: 'Rotunda',
                                                fontSize: 14,
                                                color: Color.fromARGB(255, 39, 39, 39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
