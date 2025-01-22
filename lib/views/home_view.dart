import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pagination_assessment/components/card_view.dart';
import 'package:pagination_assessment/controlller/user_provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late UserProvider userProvider;

  @override
  void initState() {
    super.initState();
    userProvider = UserProvider();
  }

  @override
  void dispose() {
    super.dispose();
    userProvider.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Pagination List',
            style: Theme.of(context).primaryTextTheme.labelMedium,
          ),
          backgroundColor: Theme.of(context).primaryColor),
      backgroundColor: Colors.white,
      body: ChangeNotifierProvider(
        create: (context) => userProvider..fetchUsers(),
        child: Consumer<UserProvider>(
          builder: (context, provider, child) {
            return NotificationListener(
              onNotification: (ScrollNotification scrollInfo) {
                if (scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent &&
                    !userProvider.isLoading) {
                  userProvider.fetchUsers();
                }
                return false;
              },
              child: ListView.builder(
                itemCount:
                    provider.users.length + (provider.hasMoreData ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == provider.users.length) {
                    return Center(
                      child: CircularProgressIndicator(
                          color: Theme.of(context).primaryColor),
                    );
                  }
                  final user = provider.users[index];
                  return CardView(user: user);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
