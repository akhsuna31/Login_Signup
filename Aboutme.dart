import 'package:flutter/material.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

bool isSwitch = false;

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Know About me!!"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/unicorn.png'),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: const Color.fromARGB(255, 40, 38, 73),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Hi!! I'm Anushka Gupta and this is a unicorn.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: const Color.fromARGB(255, 40, 38, 73),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This unicorn does't exist but I do exist!!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                isSwitch == true
                    ? const Icon(Icons.favorite, color: Colors.red)
                    : const Icon(Icons.favorite_border),
                const Text("Did you like me?"),
                isSwitch == true
                    ? const Icon(Icons.favorite, color: Colors.red)
                    : const Icon(Icons.favorite_border),
              ],
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newbool) {
                  setState(() {
                    isSwitch = newbool;
                  });
                }),
            const Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.file_copy_outlined,
                ),
                Text("Resume")
              ],
              //onPressed: () => launch('https://github.com/himanshusharma89'),
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(SimpleIcons.github),
                Icon(SimpleIcons.linkedin),
                Icon(SimpleIcons.maildotru),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
