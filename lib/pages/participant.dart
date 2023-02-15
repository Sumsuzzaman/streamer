import 'dart:ffi';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtm/agora_rtm.dart';
import 'package:flutter/material.dart';

class Participent extends StatefulWidget {
  final String channelName;
  final String userName;

  const Participent({
    Key? key,
    required this.channelName,
    required this.userName,})
    : super(key: key);

  @override
  State<Participent> createState() => _ParticipentState();
  // _ParticipentState createState() => _ParticipentState();
}

class _ParticipentState extends State<Participent> {

  late RtcEngine _engine;
  AgoraRtmClient? _client;
  AgoraRtmChannel? _channel;

  
  @override

  void initState(){
    super.initState();
    initializeAgora();
  }

  Future<void> initializeAgora() async{
    _engine = await RtcEngine.createWithContext(RtcEngineContext(appId));
    _engine.joinChannel(null, channelName,optionalInfo,optionalUid)
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Participent"
        ),
      ),
    );
  }
}