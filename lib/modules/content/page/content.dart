import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Conteúdo"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: Colors.green,
        ),
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Text(
            " \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ut volutpat risus, a luctus nisl. Quisque diam enim, vulputate vitae iaculis quis, faucibus quis nisi. Curabitur eu tempus lorem. Sed vitae interdum eros. Nam euismod luctus luctus. Vivamus sit amet scelerisque magna. Donec pharetra enim ultrices purus venenatis, nec sodales nulla auctor. Praesent euismod felis augue, eu facilisis quam finibus elementum. Phasellus in ante nec arcu venenatis consequat in sit amet mauris. Donec porttitor augue quis risus blandit, quis dictum enim cursus. Vestibulum quis neque ipsum. Nunc at mauris elit. Curabitur fermentum pellentesque elit. Curabitur sit amet porta neque. Quisque ullamcorper enim vel bibendum convallis. Pellentesque sapien leo, gravida sed purus tincidunt, rutrum sodales nunc.Praesent non pellentesque augue, ut tincidunt augue. Ut scelerisque sollicitudin erat. Donec iaculis elementum velit, suscipit tincidunt tellus. Etiam eget porttitor lorem. Nullam pharetra, justo eget convallis rutrum, massa massa feugiat diam, ut vestibulum ligula sapien vitae lectus. Curabitur viverra, lacus eu blandit posuere, sem dui placerat velit, id luctus arcu lacus non risus. Integer est elit, feugiat in nunc eget, scelerisque tincidunt arcu. Curabitur porttitor dui id lacus dapibus fermentum. Integer lobortis cursus magna varius auctor. Proin lorem ligula, facilisis ultricies ullamcorper id, rutrum sit amet tortor. Phasellus et nulla ac est interdum pulvinar at a mauris. In ac dolor a augue varius facilisis. Duis a erat vulputate, dictum leo sed, sollicitudin tellus. Fusce sed efficitur lorem. Phasellus consectetur leo erat, viverra maximus justo consectetur in.",
            style: TextStyle(fontSize: 15),
          ),
        ));
  }
}
