// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:html' as html;
import 'dart:typed_data';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Substitua pelo AppState do FlutterFlow
// Exemplo: FFAppState().audioBytes
class FFAppState {
  static final FFAppState _instance = FFAppState._internal();
  factory FFAppState() => _instance;
  FFAppState._internal();

  String? audioBytes;
}

class Fluttersound extends StatefulWidget {
  const Fluttersound({
    super.key,
    this.width,
    this.height,
    required this.telefone,
    required this.token,
  });

  final double? width;
  final double? height;
  final String telefone;
  final String token;

  @override
  State<Fluttersound> createState() => _FluttersoundState();
}

class _FluttersoundState extends State<Fluttersound> {
  html.MediaRecorder? _mediaRecorder;
  List<html.Blob> _chunks = [];
  bool _isRecording = false;
  int _seconds = 0;
  Timer? _timer;

  Future<void> _startRecording() async {
    final stream =
        await html.window.navigator.mediaDevices!.getUserMedia({'audio': true});
    _chunks = [];
    _mediaRecorder = html.MediaRecorder(stream);

    _mediaRecorder!.addEventListener('dataavailable', (event) {
      final blobEvent = event as html.BlobEvent;
      if (blobEvent.data != null) _chunks.add(blobEvent.data!);
    });

    _mediaRecorder!.addEventListener('stop', (event) async {
      final blob = html.Blob(_chunks, 'audio/wav');

      // Converte blob para bytes
      final reader = html.FileReader();
      reader.readAsArrayBuffer(blob);
      reader.onLoadEnd.listen((_) async {
        final bytes = reader.result as Uint8List;

        // Converte para base64
        final base64Audio = base64Encode(bytes);

        // Salva no AppState
        FFAppState().audioBytes = base64Audio;

        debugPrint("Áudio salvo em Base64 no AppState.");

        // Chama a API após salvar o áudio
        await _sendAudio(widget.telefone);
      });
    });

    _mediaRecorder!.start();
    setState(() {
      _isRecording = true;
      _seconds = 0;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => _seconds++);
    });
  }

  void _stopRecording() {
    _mediaRecorder?.stop();
    setState(() => _isRecording = false);
    _timer?.cancel();
  }

  String _formatDuration(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }

  Future<void> _sendAudio(String telefone) async {
    final audioBase64 = FFAppState().audioBytes;
    if (audioBase64 == null || audioBase64.isEmpty) {
      debugPrint("Nenhum áudio disponível para envio.");
      return;
    }

    final url = Uri.parse("https://gabitech.uazapi.com/send/media");
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'token': widget.token, // <-- agora pega do parâmetro
    };
    final body = jsonEncode({
      'number': telefone,
      'type': 'audio',
      'file': audioBase64,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        debugPrint("Áudio enviado com sucesso!");
      } else {
        debugPrint(
            "Erro ao enviar áudio: ${response.statusCode} - ${response.body}");
      }
    } catch (e) {
      debugPrint("Erro na requisição: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isRecording)
            Text(
              _formatDuration(_seconds),
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
          IconButton(
            icon: Icon(
              _isRecording ? Icons.stop_circle : Icons.mic,
              size: 40,
              color: _isRecording ? Colors.red : Colors.black,
            ),
            onPressed: _isRecording ? _stopRecording : _startRecording,
          ),
        ],
      ),
    );
  }
}
