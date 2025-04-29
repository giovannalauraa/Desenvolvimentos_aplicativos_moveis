import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar with FAB',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'BottomAppBar with FAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _tabContents = [
    Center(child: Text("TAB: 0", style: TextStyle(fontSize: 24))),
    Center(child: Text("TAB: 1", style: TextStyle(fontSize: 24))),
    Center(child: Text("TAB: 2", style: TextStyle(fontSize: 24))),
    Center(child: Text("TAB: 3", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.blue,),
      body: _tabContents[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        overlayOpacity: 0.1,
        children: [
          SpeedDialChild(
            child: Icon(Icons.phone, color: Colors.blue),
            backgroundColor: Colors.white,
            shape: CircleBorder(),
            onTap: () => print('Telefone clicado'),
          ),

          SpeedDialChild(
            child: Icon(Icons.email, color: Colors.blue),
            backgroundColor: Colors.white,
            shape: CircleBorder(),
            onTap: () => print('Email clicado'),
          ),

          SpeedDialChild(
            child: Icon(Icons.message, color: Colors.blue),
            backgroundColor: Colors.white,
            shape: CircleBorder(),
            onTap: () => print('Mensagem clicada'),
          ),
        ],
      ),
      bottomNavigationBar: FABBottomAppBar(
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Is'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
        centerItemText: 'A',
        backgroundColor: Colors.white,
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: const CircularNotchedRectangle(),
        onTabSelected: _onTabSelected,
      ),
    );
  }
}

class FABBottomAppBarItem {
  final IconData iconData;
  final String text;

  FABBottomAppBarItem({required this.iconData, required this.text});
}

class FABBottomAppBar extends StatefulWidget {
  const FABBottomAppBar({
    super.key,
    required this.items,
    this.centerItemText,
    this.height = 60.0,
    this.iconSize = 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    required this.onTabSelected,
  }) : assert(items.length == 2 || items.length == 4);

  final List<FABBottomAppBarItem> items;
  final String? centerItemText;
  final double height;
  final double iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<FABBottomAppBar> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  void _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      color: widget.backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            Text(
              widget.centerItemText ?? '',
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    Color? color =
        _selectedIndex == index ? widget.selectedColor : widget.color;

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.iconData, color: color, size: widget.iconSize),
                Text(item.text, style: TextStyle(color: color)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
