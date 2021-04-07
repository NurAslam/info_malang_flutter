import 'package:beautiful_malang/models/data_kuliner.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final ItemKulinerData kulinerData;

  const DetailPage({Key key, this.kulinerData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF05294A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: < Widget > [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 8),
                  child: Row(

                    children: < Widget > [
                      IconButton(
                        icon: Icon(
                          MdiIcons.arrowLeftBoldCircle,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            kulinerData.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontFamily: "Calibre-Semibold",
                              letterSpacing: 1
                            ),
                          ),
                      ),
                    ],
                  ),
              ),
              Container(
                height: 220.2,
                width: double.infinity,
                child: Card(
                  elevation: 12.0,
                  margin: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: getImage()
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: < Widget > [
                    Text(
                      kulinerData.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1
                      ),
                    ),
                    Row(
                      children: < Widget > [
                        Icon(
                          MdiIcons.mapMarker,
                          color: Colors.white,
                          size: 18,
                        ),
                        Expanded(
                          child: Text(
                            kulinerData.address.length > 40 ? kulinerData.address.substring(0, 40) : kulinerData.address,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF-Pro-Text-Regular",
                              fontSize: 15,
                              color: Colors.white70
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    RichText(
                      text: TextSpan(
                        text: kulinerData.detail,
                        style: TextStyle(
                          fontFamily: "SF-Pro-Text-Regular",
                          fontSize: 15,
                          letterSpacing: 0.7
                        )
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Center(
                  child: InkWell(
                    child: NiceButton(
                      elevation: 3.0,
                      fontSize: 18,
                      radius: 40,
                      padding: const EdgeInsets.all(10),
                        text: "Lihat Detail",
                        gradientColors: [Color(0xff4263ad), Color(0xff346c8a)],
                        onPressed: () {
                          _launchURL(kulinerData.title);
                        }, background: null,
                    ),
                    onTap: () {},
                  )


                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget getImage() {
    if (kulinerData.urlImage.contains('http:') || kulinerData.urlImage.contains('https:')) {
      return CachedNetworkImage(
        imageUrl: kulinerData.urlImage,
        placeholder: (context, url) => new CircularProgressIndicator(),
        errorWidget: (context, url, error) => new Icon(Icons.error),
        fit: BoxFit.fill
      );
    } else {
      return Image.asset(
        kulinerData.urlImage,
        fit: BoxFit.fill,
      );
    }

  }

  void _launchURL(String query) async {
    var url = "https://www.google.com/search?q=" + query;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}