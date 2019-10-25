import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomButtonAnimation extends StatefulWidget {
  final String label;
  final Color backbround;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  final Widget child;

  const CustomButtonAnimation(
      {Key key,
      this.label,
      this.backbround,
      this.borderColor,
      this.fontColor,
      this.onTap,
      this.child})
      : super(key: key);

  @override
  _CustomButtonAnimationState createState() => _CustomButtonAnimationState();
}

class _CustomButtonAnimationState extends State<CustomButtonAnimation> 
with TickerProviderStateMixin {

  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool _isTextHide = false;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 320)
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 32.0)
    .animate(_scaleController)..addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.push(context, PageTransition(
          type: PageTransitionType.fade,
          child: widget.child
        )).then((value){
          _scaleController.reverse().then((e){
            _isTextHide = false;
          });
        });
      }
    });

  }



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
         _isTextHide = true; 
        });
        _scaleController.forward();
      },
      child: AnimatedBuilder(
        animation: _scaleController,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
        child: Container(
          height: 63,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.backbround,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: widget.borderColor,
              width: 1
            ),
          ),
          child: !_isTextHide ? Text(widget.label, style: TextStyle(
            color: widget.fontColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )) : Container()
        )),
      ),
    );
  }
}
