import 'package:brain_flower/features/games/all_games/ufo_shapes/presentation/blocs/ufo_shapes_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/ufo_shapes/presentation/blocs/ufo_shapes_game_event.dart';
import 'package:brain_flower/features/games/all_games/ufo_shapes/presentation/blocs/ufo_shapes_game_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UfoShapesGameScreen extends StatelessWidget {
  final List<ShapeWidget> listShapes = [];

  Future<Widget> _buildShape(int delay) async {
    await Future.delayed(Duration(seconds: delay));
    return ShapeWidget();
  }

  Stream<List<ShapeWidget>> _buildShapes() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 2));
      listShapes.add(ShapeWidget());
      yield listShapes;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UfoShapesGameBloc>(
      create: (context) => UfoShapesGameBloc()..add(InitUfoShapesEvent()),
      child: Scaffold(
        body: BlocBuilder<UfoShapesGameBloc, UfoShapesGameState>(
          builder: (context, state){
            if(state is AddNewUfoShapeState){
              return Stack(
                children: <Widget>[
                  ...state.shapes,
                ],
              );
            } else {
              return Container();
            }
          },
        )
      ),
    );
  }
}

class ShapeWidget extends StatefulWidget {
  const ShapeWidget({Key key}) : super(key: key);

  @override
  _ShapeWidgetState createState() => _ShapeWidgetState();
}

class _ShapeWidgetState extends State<ShapeWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  final containerKey = GlobalKey();
  UfoShapesGameBloc _bloc;

  Rect get containerRect => containerKey.globalPaintBounds;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
//          ..addStatusListener((status) {
//            if(status == AnimationStatus.completed){
//              _bloc.add(UfoShapeOnFinishEvent(widget));
//            }
//          })
          ..forward();
    super.initState();
  }

  @override
  void didChangeDependencies() {

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(ShapeWidget oldWidget) {
//    print('old key: ${oldWidget.key} new key: ${widget.key}');
    if (oldWidget.key != widget.key) {
//      _animationController.reset();
    }
//    print('asdasd');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.addStatusListener((status) {
      context.bloc<UfoShapesGameBloc>()..add(UfoShapeOnFinishEvent(widget));
    });
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(context.screenWidth * 0.3 - 50,
              _animationController.value * context.screenHeight * 0.8 - 100),
          child: Container(
            key: containerKey,
            height: 100,
            width: 100,
            color: Colors.pink,
          ),
        );
      },
    );
  }
}
