import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key});

//--------------
  @override
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  final TextEditingController _controller = TextEditingController();
  String _fahrenheit = "";
//---------------------------------


  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  final InputDecoration inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white),
  );



//--------------------------------
  void _convertToFahrenheit(String celsiusInput) {
    double celsius = double.tryParse(celsiusInput) ?? 0.0;
    double fahrenheit = (celsius * 9 / 5) + 32;
    setState(() {
      _fahrenheit = fahrenheit.toStringAsFixed(2); // Format the result to 2 decimal places
    });
  }
//-------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Temperature Converter")),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff16C062),
              Color(0xff00BCDC),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.thermostat_outlined,
                  size: 120,
                  color: Colors.white,
                ),
                const Center(
                  child: Text(
                    "Converter",
                    style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
                const SizedBox(height: 50),
                const Text("Temperature in Degrees:"),
                const SizedBox(height: 10),
                TextField(
                  controller: _controller,
                  decoration: inputDecoration,
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  onSubmitted: (value) {
                    _convertToFahrenheit(value); // Trigger conversion when Enter is pressed
                  },
                ),
                const SizedBox(height: 30),
                const Text("Temperature in Fahrenheit:"),
                const SizedBox(height: 10),

                //--------------------------
                Container(
                  decoration: textDecoration,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    _fahrenheit.isEmpty
                        ? "test"
                        : '$_fahrenheit°F',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                //-------------------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
