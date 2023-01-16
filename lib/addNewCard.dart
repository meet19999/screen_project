import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_project/editCard.dart';

class addNewCard extends StatefulWidget {
  const addNewCard({Key? key}) : super(key: key);

  @override
  State<addNewCard> createState() => _addNewCardState();
}

class _addNewCardState extends State<addNewCard> {
  bool? isChecked = false;

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
          "add new card".toUpperCase(),
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
        child: SingleChildScrollView(
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
                          "assets/images/Card1.png",
                        ),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "holder name".toUpperCase(),
                        style: GoogleFonts.rubik(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        "0000 0000 0000 0000",
                        style: GoogleFonts.rubik(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Card Holder Name",
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(.7))),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(.7))),
                  hintStyle:
                      GoogleFonts.rubik(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Card Number",
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(.7))),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(.7))),
                  hintStyle:
                      GoogleFonts.rubik(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: "Expiry (MM/YY)",
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(.7))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(.7))),
                          hintStyle: GoogleFonts.rubik(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "CVC",
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(.7))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(.7))),
                          hintStyle: GoogleFonts.rubik(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    checkColor: Colors.black,
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xffD0FD3E)),
                    // tristate: true,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  Expanded(
                      child: Text(
                    "Set as default payment card",
                    style: GoogleFonts.rubik(
                        fontSize: 16, color: Colors.white.withOpacity(.7)),
                  ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(height: 90),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => const EditCard()));
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
      ),
    );
  }
}
