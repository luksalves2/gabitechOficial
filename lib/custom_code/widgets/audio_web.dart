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

class AudioWeb extends StatefulWidget {
  const AudioWeb({
    super.key,
    this.width,
    this.height,
    required this.url,
  });

  final double? width;
  final double? height;
  final String url; // Apenas URL externa

  @override
  State<AudioWeb> createState() => _AudioWebState();
}

class _AudioWebState extends State<AudioWeb> {
  html.AudioElement? _audioEl;
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initAudio();
  }

  Future<void> _initAudio() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      _audioEl = html.AudioElement(widget.url)
        ..controls = false
        ..onTimeUpdate.listen((event) {
          if (mounted) {
            setState(() {
              // Corrigido: conversão correta para Duration
              position = Duration(
                  milliseconds: ((_audioEl?.currentTime ?? 0) * 1000).toInt());
            });
          }
        })
        ..onLoadedMetadata.listen((event) {
          if (mounted) {
            setState(() {
              duration = Duration(
                  milliseconds: ((_audioEl?.duration ?? 0) * 1000).toInt());
            });
          }
        })
        ..onPlay.listen((event) {
          if (mounted) setState(() => isPlaying = true);
        })
        ..onPause.listen((event) {
          if (mounted) setState(() => isPlaying = false);
        });

      setState(() => _loading = false);
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
    return h > 0 ? '${two(h)}:${two(m)}:${two(s)}' : '${two(m)}:${two(s)}';
  }

  @override
  void dispose() {
    _audioEl?.pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxSecs =
        duration.inSeconds > 0 ? duration.inSeconds.toDouble() : 1.0;
    final posSecs = position.inSeconds.clamp(0, duration.inSeconds).toDouble();

    return Container(
      width: widget.width ?? double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          if (_loading)
            const SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          else
            IconButton(
              icon: Icon(
                isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                size: 36,
                color: Colors.blue,
              ),
              onPressed: _error != null
                  ? null
                  : () {
                      if (isPlaying) {
                        _audioEl?.pause();
                      } else {
                        _audioEl?.play();
                      }
                    },
            ),
          Expanded(
            child: _error != null
                ? Text(
                    _error!,
                    style: const TextStyle(color: Colors.red, fontSize: 12),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Slider(
                        min: 0,
                        max: maxSecs,
                        value: posSecs,
                        onChanged: (v) {
                          _audioEl?.currentTime = v;
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_fmt(position),
                              style: const TextStyle(fontSize: 12)),
                          Text(_fmt(duration),
                              style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
