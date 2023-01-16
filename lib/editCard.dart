import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditCard extends StatefulWidget {
  const EditCard({Key? key}) : super(key: key);

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            "assets/images/left.png",
            alignment: Alignment.centerRight,
          ),
        ),
        title: Text(
          "Edit Card".toUpperCase(),
          style: const TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/Card.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Card Holder Name",
              style: GoogleFonts.rubik(
                  fontSize: 16, color: const Color(0xffD0FD3E)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Megan Susan",
              style: GoogleFonts.rubik(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Card Number",
              style: GoogleFonts.rubik(
                  fontSize: 16, color: const Color(0xffD0FD3E)),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "5124 -  3256 - 6589 - 2048",
              style: GoogleFonts.rubik(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry (MM/YY)",
                        style: GoogleFonts.rubik(
                            fontSize: 16, color: const Color(0xffD0FD3E)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "01 - 23",
                        style: GoogleFonts.rubik(
                            fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        height: 10,
                        indent: 0,
                        endIndent: 15,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVC",
                        style: GoogleFonts.rubik(
                            fontSize: 16, color: const Color(0xffD0FD3E)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "696",
                        style: GoogleFonts.rubik(
                            fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        height: 10,
                        indent: 0,
                        endIndent: 0,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delete Card',
                  style: GoogleFonts.rubik(fontSize: 14, color: Colors.red),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            const SizedBox(height: 90),
            InkWell(
              onTap: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (c) => EditCard()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xffD0FD3E),
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: GoogleFonts.rubik(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
