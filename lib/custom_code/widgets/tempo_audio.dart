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

import 'dart:html' as html;

class TempoAudio extends StatefulWidget {
  const TempoAudio({
    super.key,
    this.width,
    this.height,
    required this.url,
  });

  final double? width;
  final double? height;
  final String url;

  @override
  State<TempoAudio> createState() => _TempoAudioState();
}

class _TempoAudioState extends State<TempoAudio> {
  String? _tempo;
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadDuration();
  }

  Future<void> _loadDuration() async {
    try {
      final audio = html.AudioElement(widget.url);

      // Espera carregar os metadados do áudio
      audio.onLoadedMetadata.listen((event) {
        if (!mounted) return;
        final duration =
            Duration(milliseconds: (audio.duration * 1000).toInt());
        setState(() {
          _tempo = _fmt(duration);
          _loading = false;
        });
      });

      audio.onError.listen((event) {
        if (!mounted) return;
        setState(() {
          _error = "Erro ao carregar áudio";
          _loading = false;
        });
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  String _fmt(Duration d) {
    String two(int n) => n.toString().padLeft(2, '0');
    final h = d.inHours;
    final m = d.inMinutes.remainder(60);
    final s = d.inSeconds.remainder(60);
    return h > 0 ? "${two(h)}:${two(m)}:${two(s)}" : "${two(m)}:${two(s)}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height,
      alignment: Alignment.centerLeft,
      child: _loading
          ? const Text(
              "Carregando...",
              style: TextStyle(fontSize: 13, color: Colors.white),
            )
          : _error != null
              ? Text(
                  _error!,
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                )
              : Text(
                  _tempo ?? "",
                  style: const TextStyle(
                      fontSize: 13, color: Colors.white), // 👈 ajustado
                ),
    );
  }
}
