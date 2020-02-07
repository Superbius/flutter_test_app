import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'drawer.dart';

class TextTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text test'),
      ),
      drawer: DrawerMain(selected: "text"),
      body: Center(
        child: Column(

            children: [
              Text(
                "regular -> hese are elements that are planned",
              ),
              Text(
                "monospace -> hese are elements that are planned",
                style: TextStyle(
                    fontFamily: "Monospace"
                ),
              ),
              Text(
                "Nunito-regular -> hese are elements that are planned",
                style: TextStyle(
                    fontFamily: "Nunito-regular"
                ),
              ),
              Text(
                "bold -> ",
                style: TextStyle(
                    fontFamily: "Monos"
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                  child: Html(
                      data: """
    <!--For a much more extensive example, look at example/main.dart-->
    <div style='color:red'>
      <h1>Demo Page</h1>
      <p>This is a fantastic nonexistent product that you should buy!</p>
      <h2>Pricing</h2>
      <p>Lorem ipsum <strong>dolor</strong> sit amet.</p>
      <h2>The Team</h2>
      <p>There isn't <i>really</i> a team...</p>
      <h2>Installation</h2>
      <p>You <u>cannot</u> install a nonexistent product!</p>
      <!--You can pretty much put any html in here!-->
  """,
                    //Optional parameters:
                    padding: EdgeInsets.all(8.0),
                    backgroundColor: Colors.white70,
                    defaultTextStyle: TextStyle(fontFamily: 'serif'),
                    linkStyle: const TextStyle(
                      color: Colors.redAccent,
                    ),
                    onLinkTap: (url) {
                      // open url in a webview
                    },
                    onImageTap: (src) {
                      // Display the image in large form.
                    },
                    //Must have useRichText set to false for this to work.
                  )
//                ),
              ),
            ]
        ),
      ),
    );
  }
}