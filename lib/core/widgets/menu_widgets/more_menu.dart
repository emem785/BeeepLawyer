import 'package:beep_lawyer_3/application/blocs/auth_bloc/auth_bloc.dart';
import '../../../application/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:beep_lawyer_3/presentation/Screens/MenuPages/profile_pages/profiles_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:beep_lawyer_3/application/blocs/user_bloc/user_bloc.dart';

import 'menu_item.dart';

class MoreMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    final userBloc = BlocProvider.of<UserBloc>(context);
    final navBloc = BlocProvider.of<NavigationBloc>(context);
    return Container(
        color: Colors.white,
        child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: Text('More',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Nunito')),
        ),
        BlocListener<UserBloc, UserState>(
          listener: (_, state) {
            return state.maybeMap(
                orElse: () => 1,
                userLoaded: (u) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileMenu(user: u.user),settings: RouteSettings(name: "Profile"))));
          },
          child: InkWell(
            onTap: () => userBloc.add(InsertUser()),
            child: MenuItem(
                icon: SvgPicture.asset('assets/images/User.svg'),
                mainText: 'Profile',
                subText: 'Edit your profile details'),
          ),
        ),
        
        InkWell(
          onTap: () {},
          child: MenuItem(
              icon: SvgPicture.asset('assets/images/Share.svg'),
              mainText: 'Invite',
              subText: 'Spread the word'),
        ),
        InkWell(
          onTap: () {
            authBloc.add(SignOut());
            navBloc.add(ChangeNavState(2));
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/SplashScreen', (Route<dynamic> route) => false);
          },
          child: MenuItem(
              icon: SvgPicture.asset('assets/images/logout.svg'),
              mainText: 'Log Out',
              subText: 'Log out of your account'),
        ),
      ],
    ),
        ),
      );
  }
}
