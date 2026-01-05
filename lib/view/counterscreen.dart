import 'package:counter/Controller/countercon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterscreenView extends StatelessWidget {
   CounterscreenView({super.key});
final CounterController cc = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "Counter Screen View",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 150),
          Text(
            "This is Counter Screen",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade800,
            ),
          ),

          const SizedBox(height: 60),

          Card(
            elevation: 12,
            shape: const CircleBorder(),
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.indigo],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Obx(() => Text(
                  "${cc.counter}",
                  style: const TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),)
              ),
            ),
          ),

          const SizedBox(height: 80),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  cc.decrement();
                },
                icon: const Icon(Icons.remove, size: 20),
                label: const Text("Decrement", style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 18,
                  ),
                  backgroundColor: Colors.red.shade600,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 6,
                ),
              ),

              const SizedBox(width: 40),

              ElevatedButton.icon(
                onPressed: () {
                  cc.increment();
                },
                icon: const Icon(Icons.add, size: 20),
                label: const Text("Increment", style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 18,
                  ),
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 6,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
