import 'package:diets_fast_challenge/src/ui/widgets/home.painter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Stack(
            // fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'images/4.jpeg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.73,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Opacity(
                  opacity: 0.25,
                  child: CustomPaint(
                    painter: HomePainter(),
                  ),
                ),
              ),
              Positioned(
                bottom: -30.0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    painter: HomePainter(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: const NavigationButtons(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  padding: EdgeInsets.symmetric(horizontal: 48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Example',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      Text(
                          'Nullam ac nisi at enim dapibus cursus. Maecenas velit justo, suscipit vel vehicula ac, fringilla vel augue. Praesent iaculis lacus at ullamcorper malesuada.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.60,
                left: 48.0,
                child: Text(
                  'DietFast',
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: <Widget>[
          FlatButton(
            textColor: Colors.white,
            child: const Text('Skip'),
            onPressed: () {},
          ),
          Spacer(),
          FlatButton(
            textColor: Colors.white,
            child: const Text('Continue'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
