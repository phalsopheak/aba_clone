import 'package:aba_clone/data/models/notification_announcement_model.dart';
import 'package:aba_clone/data/models/notification_transaction_model.dart';

class DataTest {
  const DataTest();

  static Future<List<NotificationTransactionModel>>
      listNotificationTransaction() async {
    var list = List<NotificationTransactionModel>();
    list = [
      NotificationTransactionModel(
        iconPath: 'A',
        title: 'ABC',
        dateTime: '',
        description: '',
      ),
      NotificationTransactionModel(
        iconPath: '',
        title: 'DEF',
        dateTime: '',
        description: '',
      ),
      NotificationTransactionModel(
        iconPath: '',
        title: 'GHI',
        dateTime: '',
        description: '',
      ),
      NotificationTransactionModel(
        iconPath: '',
        title: 'OKI',
        dateTime: '',
        description: '',
      ),
    ];
    return list;
  }

  static Future<List<NotificationAnnouncementModel>>
      listNotificationAnnouncement() async {
    var list = List<NotificationAnnouncementModel>();
    list = [
      NotificationAnnouncementModel(
        backgroundImage: 'A',
        title: 'ABC',
        dateTime: '',
        description: '',
        detail: 'OK',
      ),
      NotificationAnnouncementModel(
          backgroundImage: '',
          title: 'DEF',
          dateTime: '',
          description: '',
          detail: 'GOT IT'),
      NotificationAnnouncementModel(
          backgroundImage: '',
          title: 'GHI',
          dateTime: '',
          description: '',
          detail: 'OPEN ACCOUNT'),
    ];
    return list;
  }
}
