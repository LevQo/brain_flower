import 'package:brain_flower/resources/colors.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildItem(String gameText, String route){
      return  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, route),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.12,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: CustomColors.defaultShadowColor,
                                    blurRadius: 10.0,
                                    offset: Offset(0.0, 4.0))
                              ]),
                          child: Center(
                            child: Text(
                              gameText,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 32.0),
            Text(
              'Игры',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32.0),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildItem('Больше меньше', '/more_less_game'),
                  _buildItem('Найти число', '/find_number_game'),
                  _buildItem('Домино', '/dominoes_game'),
                  _buildItem('Найти объект', '/find_object_game'),
                ],
              ),
//              child: ListView.builder(
//                itemBuilder: (context, index) {
//                  var route = routes[index];
//                  var gameText = index == 0 ? 'Больше-Меньше' : 'Найти цифру';
//                  return GestureDetector(
//                    onTap: () => Navigator.pushNamed(context, route),
//                    child: Padding(
//                      padding: const EdgeInsets.all(16.0),
//                      child: Align(
//                        child: Container(
//                          height: MediaQuery.of(context).size.height * 0.12,
//                          width: MediaQuery.of(context).size.width * 0.8,
//                          decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(20.0),
//                              color: Colors.white,
//                              boxShadow: [
//                                BoxShadow(
//                                    color: CustomColors.defaultShadowColor,
//                                    blurRadius: 10.0,
//                                    offset: Offset(0.0, 4.0))
//                              ]),
//                          child: Center(
//                            child: Text(
//                              gameText,
//                              style: TextStyle(
//                                  color: Colors.black54,
//                                  fontSize: 20.0,
//                                  fontWeight: FontWeight.w500),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                  );
//                },
//                itemCount: 2,
//              ),
            ),
          ],
        ),
      ),
    );
  }
}
