import 'package:aba_clone/data/models/notification_announcement_model.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AnnouncementItem extends StatelessWidget {
  final NotificationAnnouncementModel notificationAnnouncementModel;

  const AnnouncementItem({Key key, this.notificationAnnouncementModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image =
        'https://payway.ababank.com/uploads/tx_abalandingpage/slider/payway-aba-bank-01.jpg';

    buildCollapsed2() {
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
            height: 100,
            width: double.infinity,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.black,
                    ],
                    stops: [
                      0,
                      1,
                    ])),
          ),
          Container(
            height: 100,
            child: Center(
              child: Text(notificationAnnouncementModel.title),
            ),
          ),
        ],
      );
    }

    buildExpanded2() {
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
            height: 200,
            width: double.infinity,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.black,
                    ],
                    stops: [
                      0,
                      1,
                    ])),
          ),
          Container(
            height: 200,
            child: Center(
              child: Text(
                notificationAnnouncementModel.title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: ScrollOnExpand(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expandable(
                collapsed: buildCollapsed2(),
                expanded: buildExpanded2(),
              ),
              Divider(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      var controller = ExpandableController.of(context);
                      return FlatButton(
                        child: Text(
                          notificationAnnouncementModel.detail,
                          style: TextStyle(color: Colors.cyan[600]),
                        ),
                        onPressed: () {
                          controller.toggle();
                        },
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      var controller = ExpandableController.of(context);
                      return IconButton(
                        icon: controller.expanded
                            ? Icon(Icons.keyboard_arrow_up)
                            : Icon(Icons.keyboard_arrow_down),
                        onPressed: () {
                          controller.toggle();
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
