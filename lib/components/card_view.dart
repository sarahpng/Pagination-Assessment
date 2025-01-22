import 'package:flutter/material.dart';
import 'package:pagination_assessment/components/avatar.dart';
import 'package:pagination_assessment/model/user_model.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 0, 4.0, 0),
      child: Card(
        color: Theme.of(context).cardColor,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Avatar(image: user.picture),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${user.firstName} ${user.lastName} - ${user.age}',
                    style: Theme.of(context).primaryTextTheme.titleLarge,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/chat.png',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/phone-call.png',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Location",
                    style: Theme.of(context).primaryTextTheme.titleSmall,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Text('${user.city}, ${user.country}',
                      style: Theme.of(context).primaryTextTheme.titleMedium),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
