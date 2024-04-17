import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class TorchSample extends StatefulWidget {
  const TorchSample({super.key});

  @override
  State<TorchSample> createState() => _TorchSampleState();
}

class _TorchSampleState extends State<TorchSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<bool>(
        future: _isTorchavailable(),
        builder: (context, snapshot) {
          return Column(children: [
            Center(
              child: ElevatedButton(onPressed: () {
                setState(() {
                  _isTorchDisabled();
                });
              }, child: Text("Off")),
            ),
            Center(
              child: ElevatedButton(onPressed: () {
                setState(() {
                  _isTorchenabled();
                });
              }, child: Text("on")),
            ),
          ]);
        },
      ),
    );
  }

  Future<bool> _isTorchavailable() async {
    try {
      return await TorchLight.isTorchAvailable();
    } catch (e) {}
    return false;
  }

  Future<void> _isTorchenabled() async {
    try {
      return await TorchLight.enableTorch();
    } catch (e) {}
    return;
  }

  Future<void> _isTorchDisabled() async {
    try {
      return await TorchLight.disableTorch();
    } catch (e) {}
    return;
  }
}
