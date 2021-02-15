import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  Login({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(57.6, 160.0),
            child: SizedBox(
              width: 245.0,
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontFamily: 'Angsana New',
                  fontSize: 40,
                  color: const Color(0xff000000),
                  letterSpacing: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(56.0, 217.0),
            child: SizedBox(
              width: 249.0,
              height: 40.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 249.0, 40.0),
                    size: Size(249.0, 40.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 2.0, color: const Color(0xffbdf22e)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(20.0, 9.0, 102.0, 18.0),
                    size: Size(249.0, 40.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'USERNAME',
                      style: TextStyle(
                        fontFamily: 'Angsana New',
                        fontSize: 18,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(56.0, 277.0),
            child:
                // Adobe XD layer: 'inputs' (group)
                SizedBox(
              width: 249.0,
              height: 41.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 249.0, 41.0),
                    size: Size(249.0, 41.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 2.0, color: const Color(0xffbdf22e)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 9.0, 104.0, 18.0),
                    size: Size(249.0, 41.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'PASSWORD',
                      style: TextStyle(
                        fontFamily: 'Angsana New',
                        fontSize: 18,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(56.0, 425.0),
            child: SizedBox(
              width: 249.0,
              height: 41.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 249.0, 41.0),
                    size: Size(249.0, 41.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xff3c78d8),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(74.0, 0.0, 100.0, 33.0),
                    size: Size(249.0, 41.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(
                        fontFamily: 'Angsana New',
                        fontSize: 24,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        height: 0.4166666666666667,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(168.0, 388.0),
            child:
                // Adobe XD layer: 'Divider' (shape)
                Container(
              width: 24.0,
              height: 4.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: const Color(0xff00adb5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(76.0, 331.0),
            child:
                // Adobe XD layer: 'Checkbox - Selected' (group)
                SizedBox(
              width: 162.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 6.0, 21.0, 21.0),
                    size: Size(162.0, 27.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffbdf22e),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(28.0, 0.0, 134.0, 27.0),
                    size: Size(162.0, 27.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'บันทึกเข้าสู่ระบบ',
                      style: TextStyle(
                        fontFamily: 'Angsana New',
                        fontSize: 20,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.9, 11.0, 11.2, 11.0),
                    size: Size(162.0, 27.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.1, 0.0, 11.0, 11.0),
                          size: Size(11.2, 11.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 1.3, 11.2, 7.7),
                          size: Size(11.2, 11.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Checkbox' (shape)
                              SvgPicture.string(
                            _svg_ybetdl,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(117.0, 22.0),
            child: SizedBox(
              width: 125.0,
              height: 131.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(75.9, 31.1, 26.4, 26.4),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffff6584),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(125.3, 53.9, 1.0, 1.0),
                    size: Size(125.5, 131.3),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_mfii9x,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(36.7, 50.7, 6.9, 33.5),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_sda2qc,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.9, 65.9, 8.3, 18.3),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_uxssqj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(72.9, 63.1, 6.0, 29.2),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_52a1wz,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(74.9, 76.3, 7.3, 16.0),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_evw2wd,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(22.3, 9.0, 5.4, 3.2),
                    size: Size(125.5, 131.3),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_mtvyi9,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(87.8, 0.0, 5.4, 3.2),
                    size: Size(125.5, 131.3),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_opk6vc,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(80.3, 69.0, 42.8, 48.5),
                    size: Size(125.5, 131.3),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_rqy6zq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(81.5, 74.7, 41.5, 43.3),
                    size: Size(125.5, 131.3),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_a357jd,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.3, 77.4, 106.4, 53.6),
                    size: Size(125.5, 131.3),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_69in0c,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.6, 82.3, 101.5, 49.0),
                    size: Size(125.5, 131.3),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_59os56,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.0, 106.3, 77.9, 25.0),
                    size: Size(125.5, 131.3),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_kp7oh8,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.2, 111.0, 67.3, 20.3),
                    size: Size(125.5, 131.3),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_a0qaaw,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.6, 9.9, 93.4, 27.0),
                    size: Size(125.5, 131.3),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_gfzve5,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.7, 17.2, 27.0, 55.0),
                    size: Size(125.5, 131.3),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: -0.1784,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xff3f3d56),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.4, 25.3, 12.5, 64.0),
                    size: Size(125.5, 131.3),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_os8p1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.3, 36.7, 1.1, 13.8),
                    size: Size(125.5, 131.3),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: -1.258,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffbce0fd),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.2, 44.0, 13.8, 1.1),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: -0.6698,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffbce0fd),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(43.7, 7.5, 29.2, 59.6),
                    size: Size(125.5, 131.3),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff3f3d56),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.8, 15.7, 3.7, 70.4),
                    size: Size(125.5, 131.3),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_9t75rh,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(51.2, 27.4, 1.2, 15.0),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: -1.0796,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffbce0fd),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(58.2, 37.9, 15.0, 1.2),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: -0.4914,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffbce0fd),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(28.9, 38.8, 92.7, 20.5),
                    size: Size(125.5, 131.3),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_vhfcli,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(75.3, 23.1, 5.4, 3.2),
                    size: Size(125.5, 131.3),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_slwy1v,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 473.0),
            child: SizedBox(
              width: 361.0,
              height: 172.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 360.5, 157.6),
                    size: Size(360.5, 171.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_m51err,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 45.9, 360.5, 125.8),
                    size: Size(360.5, 171.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_ui0gdy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ybetdl =
    '<svg viewBox="0.0 1.4 11.2 7.7" ><path transform="translate(0.0, 1.4)" d="M 4.454878807067871 7.747615337371826 L 0 3.292736530303955 L 0.9038884043693542 2.388848066329956 L 4.454878807067871 5.875274658203125 L 10.330153465271 0 L 11.23404216766357 0.9038884043693542 L 4.454878807067871 7.747615337371826 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mfii9x =
    '<svg viewBox="102.4 53.9 1.0 1.0" ><path transform="translate(-842.85, -329.3)" d="M 945.3690185546875 383.4318542480469 C 945.3981323242188 383.4265441894531 945.4200439453125 383.4061889648438 945.4539794921875 383.411376953125 C 945.4391479492188 383.3541564941406 945.4197387695312 383.2982177734375 945.3961181640625 383.2440490722656 C 945.35400390625 383.3013916015625 945.31103515625 383.35986328125 945.2734985351562 383.4111328125 L 945.3690185546875 383.4318542480469 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sda2qc =
    '<svg viewBox="13.9 50.7 6.9 33.5" ><path transform="translate(-426.37, -314.01)" d="M 440.2474060058594 389.5693969726562 C 440.3245849609375 392.452880859375 440.8076171875 395.3110961914062 441.6821594238281 398.059814453125 C 441.7021484375 398.1235656738281 441.7230834960938 398.1864013671875 441.7440185546875 398.2501831054688 L 447.098388671875 398.2501831054688 C 447.0926513671875 398.1930847167969 447.0869445800781 398.1292724609375 447.0812377929688 398.059814453125 C 446.7242126464844 393.9555053710938 444.6658935546875 368.9754028320312 447.126953125 364.7037353515625 C 446.9117736816406 365.05029296875 439.8323364257812 376.5282592773438 440.2474060058594 389.5693969726562 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uxssqj =
    '<svg viewBox="10.1 65.9 8.3 18.3" ><path transform="translate(-408.63, -385.66)" d="M 422.9110717773438 469.7131958007812 C 422.955810546875 469.7770080566406 423.00244140625 469.8407897949219 423.050048828125 469.9036254882812 L 427.0667724609375 469.9036254882812 C 427.0363159179688 469.849365234375 427.0010681152344 469.7855834960938 426.9601440429688 469.7131958007812 C 426.2965698242188 468.5155334472656 424.3324584960938 464.9348449707031 422.50927734375 461.2228088378906 C 420.5499572753906 457.2337036132812 418.7525024414062 453.0932312011719 418.9038696289062 451.5946960449219 C 418.857177734375 451.9326782226562 417.5014038085938 462.23583984375 422.9110717773438 469.7131958007812 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_52a1wz =
    '<svg viewBox="50.0 63.1 6.0 29.2" ><path transform="translate(-596.42, -372.15)" d="M 652.4324340820312 456.8888244628906 C 652.3651123046875 459.4026794433594 651.944091796875 461.89453125 651.181640625 464.2908935546875 C 651.1641845703125 464.3464965820312 651.1458740234375 464.4012451171875 651.127685546875 464.4568786621094 L 646.4596557617188 464.4568786621094 C 646.464599609375 464.4070739746094 646.4696044921875 464.3514709472656 646.474609375 464.2908935546875 C 646.785888671875 460.7126770019531 648.580322265625 438.9347534179688 646.4347534179688 435.2105712890625 C 646.6222534179688 435.5127868652344 652.794189453125 445.5194091796875 652.4324340820312 456.8888244628906 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_evw2wd =
    '<svg viewBox="52.0 76.3 7.3 16.0" ><path transform="translate(-605.94, -434.62)" d="M 661.6018676757812 526.7597045898438 C 661.5628662109375 526.8153076171875 661.5221557617188 526.8709106445312 661.4806518554688 526.9256591796875 L 657.97900390625 526.9256591796875 C 658.005615234375 526.87841796875 658.0362548828125 526.82275390625 658.0719604492188 526.7597045898438 C 658.6505126953125 525.7155151367188 660.36279296875 522.5938720703125 661.9522705078125 519.357666015625 C 663.6604614257812 515.8798828125 665.2275390625 512.2701416015625 665.0955810546875 510.9636840820312 C 665.1361083984375 511.2583618164062 666.318115234375 520.24072265625 661.6018676757812 526.7597045898438 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mtvyi9 =
    '<svg viewBox="-0.6 9.0 5.4 3.2" ><path transform="translate(-358.34, -117.78)" d="M 360.984619140625 128.5040130615234 L 363.1614990234375 126.7629241943359 C 361.4703979492188 126.5763549804688 360.7755126953125 127.4986572265625 360.4911499023438 128.2286682128906 C 359.1699829101562 127.6800537109375 357.7317199707031 128.3990325927734 357.7317199707031 128.3990325927734 L 362.0872802734375 129.9802551269531 C 361.8675231933594 129.3933410644531 361.4850463867188 128.8812561035156 360.984619140625 128.5040283203125 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_opk6vc =
    '<svg viewBox="65.0 0.0 5.4 3.2" ><path transform="translate(-666.66, -75.63)" d="M 734.8685302734375 77.39891052246094 L 737.04541015625 75.65781402587891 C 735.3543090820312 75.47123718261719 734.6594848632812 76.39353942871094 734.3751220703125 77.12355041503906 C 733.053955078125 76.574951171875 731.6156616210938 77.29391479492188 731.6156616210938 77.29391479492188 L 735.9712524414062 78.87513732910156 C 735.7515258789062 78.28823852539062 735.3690185546875 77.77613830566406 734.8685302734375 77.39891052246094 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rqy6zq =
    '<svg viewBox="57.5 69.0 42.8 48.5" ><path transform="translate(-631.46, -400.27)" d="M 731.6981811523438 470.8901977539062 C 731.6981811523438 472.3328247070312 731.64794921875 473.763671875 731.54736328125 475.1827392578125 C 730.77197265625 486.3782958984375 726.8900146484375 497.1358642578125 720.337646484375 506.2467651367188 C 719.4813842773438 507.4418334960938 718.582275390625 508.6033935546875 717.640380859375 509.7314147949219 C 715.1998291015625 512.6585083007812 712.4901123046875 515.3501586914062 709.5467529296875 517.7711181640625 L 696.6448974609375 510.2005615234375 L 688.9310302734375 492.1964416503906 C 688.9310302734375 492.1964416503906 700.4404296875 468.8927917480469 731.6776733398438 469.3152465820312 C 731.6907958984375 469.83837890625 731.6975708007812 470.3634033203125 731.6981811523438 470.8901977539062 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a357jd =
    '<svg viewBox="58.6 74.7 41.5 43.3" ><path transform="translate(-636.71, -427.11)" d="M 736.7991333007812 502.0164794921875 C 735.5991821289062 518.9304809570312 727.3779296875 534.571044921875 714.12646484375 545.150390625 L 702.1405029296875 538.1177368164062 L 695.2996215820312 522.1500854492188 C 695.2996215820312 522.1500854492188 706.3846435546875 499.7064208984375 736.7991333007812 502.0164794921875 Z" fill="#bce0fd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_69in0c =
    '<svg viewBox="-17.5 77.4 106.4 53.6" ><path transform="translate(-278.76, -439.65)" d="M 367.6382446289062 545.6275024414062 C 366.781982421875 546.822509765625 365.8828735351562 547.984130859375 364.9409790039062 549.1121215820312 C 358.6295776367188 556.6951904296875 350.5650939941406 562.6256713867188 341.4456787109375 566.3902587890625 C 339.5990600585938 567.151611328125 337.7090759277344 567.822998046875 335.775634765625 568.4043579101562 C 321.8147888183594 572.1170654296875 307.0242004394531 571.1780395507812 293.6449890136719 565.7294921875 C 280.4131164550781 559.8236694335938 269.7204284667969 549.3936767578125 263.4874267578125 536.3126831054688 C 262.6497497558594 534.5517578125 261.896484375 532.74609375 261.2276000976562 530.8958129882812 C 272.8933715820312 522.349853515625 295.8806457519531 510.1124877929688 320.93408203125 522.0036010742188 C 327.8642883300781 525.2928466796875 334.0523681640625 528.2910766601562 339.4984130859375 530.998291015625 C 353.3179931640625 537.8485107421875 362.5155029296875 542.7869262695312 367.6382446289062 545.6275024414062 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_59os56 =
    '<svg viewBox="-15.3 82.3 101.5 49.0" ><path transform="translate(-289.39, -462.62)" d="M 375.5675048828125 572.073974609375 C 362.3093872070312 587.9633178710938 341.8721923828125 596.0072021484375 321.3406982421875 593.4168701171875 C 300.8092041015625 590.82666015625 283.0102233886719 577.9589233398438 274.1139526367188 559.2745361328125 C 283.8568420410156 551.5699462890625 306.3283996582031 537.7243041992188 330.9891662597656 549.4273681640625 C 337.3311767578125 552.4373168945312 342.9931335449219 555.18115234375 347.9750366210938 557.6587524414062 C 362.4981384277344 564.85693359375 371.4443359375 569.7489624023438 375.5675048828125 572.073974609375 Z" fill="#bce0fd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kp7oh8 =
    '<svg viewBox="-8.9 106.3 77.9 25.0" ><path transform="translate(-319.43, -575.34)" d="M 388.412841796875 699.039306640625 C 386.3725891113281 700.17041015625 384.2694396972656 701.1840209960938 382.1136474609375 702.0753784179688 C 374.7772827148438 705.0986328125 366.9179077148438 706.6495971679688 358.9830322265625 706.6397705078125 C 339.9485778808594 706.6322021484375 322.0184326171875 697.7022705078125 310.5440673828125 682.5150756835938 C 325.0373840332031 680.98681640625 365.0999145507812 678.92626953125 388.412841796875 699.039306640625 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a0qaaw =
    '<svg viewBox="-4.6 111.0 67.3 20.3" ><path transform="translate(-339.35, -597.67)" d="M 402.0359497070312 724.403564453125 C 378.7470092773438 733.9796142578125 351.9644165039062 728.1954345703125 334.7030639648438 709.8617553710938 C 339.974853515625 709.08740234375 381.3626098632812 703.769287109375 402.0359497070312 724.403564453125 Z" fill="#bce0fd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gfzve5 =
    '<svg viewBox="-3.3 9.9 93.4 27.0" ><path transform="translate(-345.69, -122.35)" d="M 435.748779296875 159.3113403320312 L 435.748779296875 159.3132019042969 C 392.4176635742188 127.2755966186523 342.7723388671875 149.8253479003906 342.3890075683594 149.9984283447266 L 342.3890075683594 149.99658203125 C 353.7536926269531 138.6332550048828 369.1725769042969 132.2586212158203 385.2436828613281 132.2791595458984 C 406.309814453125 132.2790832519531 424.8684692382812 143.0141906738281 435.748779296875 159.3113403320312 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_os8p1 =
    '<svg viewBox="-10.5 25.3 12.5 64.0" ><path transform="translate(-311.92, -194.47)" d="M 313.981689453125 283.7342224121094 C 313.547119140625 250.8819885253906 302.5552673339844 220.0523986816406 302.4443359375 219.7449951171875 L 301.44189453125 220.1065826416016 C 301.5523071289062 220.4124145507812 312.4838256835938 251.0806579589844 312.9161071777344 283.7485961914062 L 313.981689453125 283.7342224121094 Z" fill="#bce0fd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9t75rh =
    '<svg viewBox="32.9 15.7 3.7 70.4" ><path transform="translate(-516.09, -149.28)" d="M 550.1630249023438 235.3027954101562 C 556.0079345703125 200.2343139648438 550.2218627929688 165.2926330566406 550.1627197265625 164.9440002441406 L 549.0257568359375 165.1365966796875 C 549.0846557617188 165.4834594726562 554.8375244140625 200.2415466308594 549.0255126953125 235.1134643554688 L 550.1630249023438 235.3027954101562 Z" fill="#bce0fd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vhfcli =
    '<svg viewBox="6.1 38.8 92.7 20.5" ><path transform="translate(-389.78, -257.85)" d="M 488.5919494628906 315.3316345214844 C 483.2374877929688 312.325439453125 477.6432495117188 309.7677612304688 471.86669921875 307.6847534179688 C 439.9258422851562 296.1268920898438 408.2531127929688 300.5813903808594 395.8557434082031 317.1223754882812 C 405.5037231445312 296.8584594726562 439.9295349121094 290.4866333007812 474.6700744628906 303.05712890625 C 478.7135009765625 304.5189208984375 482.6705322265625 306.2093811035156 486.5220642089844 308.1203002929688 C 487.3611755371094 310.478759765625 488.052490234375 312.88720703125 488.5919494628906 315.3316345214844 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_slwy1v =
    '<svg viewBox="52.4 23.1 5.4 3.2" ><path transform="translate(-607.71, -184.28)" d="M 663.3875732421875 209.1540222167969 L 665.564453125 207.4129333496094 C 663.8733520507812 207.2263488769531 663.178466796875 208.1486511230469 662.8941650390625 208.878662109375 C 661.572998046875 208.3300476074219 660.1347045898438 209.0490264892578 660.1347045898438 209.0490264892578 L 664.490234375 210.6302490234375 C 664.2705078125 210.0433502197266 663.8880004882812 209.53125 663.3875732421875 209.1540222167969 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m51err =
    '<svg viewBox="0.0 473.0 360.5 157.6" ><path transform="translate(0.0, -14.0)" d="M 0 487 C 241.2734375 598.06005859375 360.5128173828125 553.3452758789062 360.5128173828125 553.3452758789062 L 360.5128173828125 644.637939453125 L 0 644.637939453125 L 0 487 Z" fill="#bdf22e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ui0gdy =
    '<svg viewBox="0.0 518.9 360.5 125.8" ><path  d="M 0 518.8776245117188 C 219.8476104736328 593.4022216796875 360.5128173828125 518.8776245117188 360.5128173828125 518.8776245117188 L 360.5128173828125 644.637939453125 L 0 644.637939453125 L 0 518.8776245117188 Z" fill="#32d7c0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
