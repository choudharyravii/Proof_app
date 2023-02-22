import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proof/Provider/find_frinds_pov.dart';
import 'package:proof/Screens/2_step_verification.dart';
import 'package:proof/Screens/Profile.dart';
import 'package:proof/Screens/about_us.dart';
import 'package:proof/Screens/access_contact.dart';
import 'package:proof/Screens/add_friend.dart';
import 'package:proof/Screens/add_friends.dart';
import 'package:proof/Screens/addpost.dart';
import 'package:proof/Screens/change_password.dart';
import 'package:proof/Screens/createprofile.dart';
import 'package:proof/Screens/edit_profile.dart';
import 'package:proof/Screens/enable_location.dart';
import 'package:proof/Screens/find_friends.dart';
import 'package:proof/Screens/fluffle.dart';
import 'package:proof/Screens/forgot_password.dart';
import 'package:proof/Screens/friendconfirm.dart';
import 'package:proof/Screens/inside_chat.dart';
import 'package:proof/Screens/interested_in.dart';
import 'package:proof/Screens/intro.dart';
import 'package:proof/Screens/log_sign_up.dart';
import 'package:proof/Screens/main_screen.dart';
import 'package:proof/Screens/message.dart';
import 'package:proof/Screens/notification.dart';
import 'package:proof/Screens/other_doc.dart';
import 'package:proof/Screens/other_document.dart';
import 'package:proof/Screens/privacy_policy.dart';
import 'package:proof/Screens/profile_changepass.dart';
import 'package:proof/Screens/profile_find_friend.dart';
import 'package:proof/Screens/profile_std_result.dart';
import 'package:proof/Screens/profile_std_verification.dart';
import 'package:proof/Screens/saplesh.dart';
import 'package:proof/Screens/setting.dart';
import 'package:proof/Screens/std_result_list.dart';
import 'package:proof/Screens/terms_condition.dart';
import 'package:proof/Screens/understanding_data.dart';
import 'package:proof/Screens/upload_report.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: FindFriendsPov()),
      ],
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.focusedChild?.unfocus();
          }
          // new TextEditingController().clear();
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Colors.white,
              fontFamily: FontFamily.gillSans),

          initialRoute: '/',
          routes: {
            '/': (context) => const UnderStandingData(),
            // '/': (context) => const SapleshScreen(),
            '/LogSignUp': (context) => const LogSignUp(),
            '/Verfication': (context) => const Verfication(),
            '/ForgotPassword': (context) => const ForgotPassword(),
            '/ChangePassword': (context) => const ChangePassword(),
            '/ChnageProfile': (context) => const ChnageProfile(),
            '/ContactAccess': (context) => const ContactAccess(),
            '/EnableLocation': (context) => const EnableLocation(),
            '/FindFriends': (context) => const FindFriends(),
            '/InterrestedIn': (context) => const InterrestedIn(),
            '/StdResultList': (context) => const StdResultList(),
            '/UploadReport': (context) => const UploadReport(),
            '/OtherDocument': (context) => const OtherDocument(),
            '/Intro': (context) => const Intro(),
            '/MainScreen': (context) => const MainScreen(title: ''),
            // '/FluFlleScreen': (context) =>  FluFlleScreen(),
            '/MessageScreen': (context) => const MessageScreen(),
            '/ProfileScreen': (context) => const ProfileScreen(),
            '/CreatePost': (context) => const PostScreen(),
            '/AddFriends': (context) => const AddFriends(),
            '/Add_Friend': (context) => const Add_Friend(),
            '/friendconfirm': (context) => const FriendConfirm(),
            '/InsideChatScreen': (context) => const InsideChatScreen(),
            '/ProfileStdResult': (context) => const ProfileStdResult(),
            '/ProfileStdVerification': (context) =>
                const ProfileStdVerification(),
            '/OtherDoc': (context) => const OtherDoc(),
            '/NotificationProfile': (context) => const NotificationProfile(),
            '/SettingProfile': (context) => const SettingProfile(),
            '/EditProfile': (context) => const EditProfile(),
            '/ProfileFindFriends': (context) => const ProfileFindFriends(),
            '/ProfileChangePassword': (context) =>
                const ProfileChangePassword(),
            '/AboutUs': (context) => const AboutUs(),
            '/PrivacyPolicy': (context) => const PrivacyPolicy(),
            '/TermNdCondition': (context) => const TermNdCondition(),
          },
          // home: const SapleshScreen(),
        ),
      ),
    );
  }
}
