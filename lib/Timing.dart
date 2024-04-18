import 'package:flutter/material.dart';

class AnimatedContainerDemo1 extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo1> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false; // Define _isSelected3
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected1 = !_isSelected1;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: _isSelected1 ? 200 : 100,
              height: _isSelected1 ? 200 : 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  _isSelected1 ? 'Selected' : 'Not Selected',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected2 = !_isSelected2;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeIn,
              width: _isSelected2 ? 150 : 250,
              height: _isSelected2 ? 150 : 250,
              color: Colors.red,
              child: Center(
                child: Text(
                  _isSelected2 ? 'Selected' : 'Not Selected',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected3 = !_isSelected3;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: _isSelected3 ? 200 : 100,
              height: _isSelected3 ? 200 : 100,
              color: Colors.green,
              child: Center(
                child: Text(
                  _isSelected3 ? 'Selected' : 'Not Selected',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected4 = !_isSelected4;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: _isSelected4 ? 200 : 100,
                height: _isSelected4 ? 100 : 200,
                color: Colors.blue,
                child: Text(
                  _isSelected4 ? 'Selected' : 'Not Selected',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected5 = !_isSelected4;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: _isSelected5 ? 200 : 100,
                height: _isSelected5 ? 100 : 200,
                color: Colors.blue,
                child: Text(
                  _isSelected5 ? 'Selected' : 'Not Selected',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
