
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Navigation Basic',
  initialRoute: '/',
  routes: {

    '/' : (context) =>FirstScreen(),
    '/second':(context) => SecondScreen()
  },

));



class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),

      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SecondRoute()
            ));
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),

      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch Screen'),
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back!'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}




