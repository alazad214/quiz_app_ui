import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> notifications = [
    {
      "title": "New Message",
      "message": "You have a new message!",
      "time": "2m ago"
    },
    {
      "title": "Update Available",
      "message": "A new update is ready.",
      "time": "10m ago"
    },
    {"title": "Reminder", "message": "Meeting at 3 PM.", "time": "1h ago"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Notifications'),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5.w),
            child: ListTile(
              leading: Icon(
                Icons.notifications,
                color: AppColors.primaryColor,
              ),
              title: Text(
                notification["title"],
                style: TextFontStyle.textStyle16w500c333333,
              ),
              subtitle: Text(notification["message"]),
              trailing: Text(notification["time"]),
              tileColor: AppColors.cWhite,
            ),
          );
        },
      ),
    );
  }
}
