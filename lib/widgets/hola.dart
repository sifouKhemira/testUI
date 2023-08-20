import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:audio_wave/audio_wave.dart';

class MainBodyPage extends StatefulWidget {
  const MainBodyPage({super.key});
  @override
  State<MainBodyPage> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBodyPage> {
  String inCall= "in call with".toCapitalized() ;
  @override
  Widget build(BuildContext context) {
    //my computer crashes when i use the emulator , so i coudln't know how is the design on other devices
    // i tried to make responsive
    return Stack(
      children: [
        const Positioned.fill(
          child: Image(
            image: AssetImage('assets/5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                inCall,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 0.70, color: Colors.white),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: const ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/5.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                shape: OvalBorder(
                                  side: BorderSide(width: 0.70, color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        //that double container are used to make the space between the image and the side border
                        left: 70,
                        top: 70,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 0.50, color: Colors.white),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(width: 0.50, color: Colors.transparent),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/7.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25.0),
              const Text(
                "Abbas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: ShapeDecoration(
                  color: const Color(0x30BEBEBE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  //text rich and textspans are used to make diferent stlying of text
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Hi, you’ve reached Abbas. Thanks for calling. I can’t answer your call at the moment, however if you leave your name, number and message,",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "I’ll get back to you as soon I can.\nThere’s nothing wrong with this classic style of voicemail greeting. It’s short, sharp, and to the point.",
                          style: TextStyle(
                            color: Color(0xffABA6A4),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35.0),
              Flexible(

                //that code without padding
                     child:AudioWave(
                        animation: false,
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.8,
                        spacing: 5,
                        bars: [
                          AudioWaveBar(heightFactor: 0.3, color: const Color(0xffFFFFFF)),
                          AudioWaveBar(heightFactor: 0.6, color: const Color(0xffFFFFFF)),
                          AudioWaveBar(heightFactor: 0.5, color: const Color(0xffFFFFFF)),
                          AudioWaveBar(heightFactor: 0.8, color: const Color(0xffFFFFFF)),
                          AudioWaveBar(heightFactor: 0.3, color: const Color(0xffFFFFFF)),
                          AudioWaveBar(heightFactor: 0.6, color: const Color(0xffFFFFFF)),
                          AudioWaveBar(heightFactor: 0.5, color: const Color(0xffFFFFFF)),

                        ],
                      ),

              ),
              const SizedBox(height: 35.0),
              const Text(
                "02 : 30",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xff838581),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff838581).withOpacity(0.5),
                          spreadRadius: 7,
                          blurRadius: 80,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: RawMaterialButton(
                      onPressed: () {},
                      shape: const CircleBorder(),
                      child: const Icon(
                        FontAwesomeIcons.solidMessage,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xff4867BA),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff4867BA).withOpacity(0.5),
                          spreadRadius: 7,
                          blurRadius: 80,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: RawMaterialButton(
                      onPressed: () {},
                      shape: const CircleBorder(),
                      child: const Icon(
                        FontAwesomeIcons.microphone,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffDB2323),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xffDB2323).withOpacity(0.5),
                          spreadRadius: 7,
                          blurRadius: 80,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: RawMaterialButton(
                      onPressed: () {},
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.call_end,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
}
