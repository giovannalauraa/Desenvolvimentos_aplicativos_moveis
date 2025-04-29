import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layouts',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 18),
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
        centerTitle: true,
      ),
      body: isPortrait ? _buildPortraitLayout(context) : _buildLandscapeLayout(context),
    );
  }

  Widget _buildPortraitLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Cheetah Coding', style: TextStyle(fontSize: 28)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
               style: ElevatedButton.styleFrom(
               side: BorderSide.none, 
               backgroundColor: Colors.white,
               foregroundColor: Colors.black, 
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                ),
            ),
              child: const Text('BUTTON 1'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
               style: ElevatedButton.styleFrom(
               side: BorderSide.none, 
               backgroundColor: Colors.white, 
               foregroundColor: Colors.black, 
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                ),
             ),
              child: const Text('BUTTON 2'),
            ),
          ],
        ),
        const SizedBox(height: 30),
        _buildMenuList(),
      ],
    );
  }

  Widget _buildLandscapeLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Cheetah Coding', style: TextStyle(fontSize: 28)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                 style: ElevatedButton.styleFrom(
                  side: BorderSide.none, 
                  backgroundColor: Colors.white, 
                  foregroundColor: Colors.black, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
              ),
                child: const Text('BUTTON 1'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  side: BorderSide.none, 
                  backgroundColor: Colors.white, 
                  foregroundColor: Colors.black, 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
              ),
                child: const Text('BUTTON 2'),
              ),
            ],
          ),
        ),
        Container(
          width: 1,
          color: Colors.white,
        ),
        Expanded(
          child: _buildMenuList(),
        ),
      ],
    );
  }

  Widget _buildMenuList() {
    final languages = ['Dart', 'JavaScript', 'PHP', 'C++'];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
          ),
          child: ListTile(
            title: Center(child: Text(languages[index])),
            onTap: () {},
          ),
        );
      },
    );
  }
}
