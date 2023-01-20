import 'package:flutter/material.dart';

class CurrentPrograms extends StatelessWidget {
  const CurrentPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current Programs',
                style: Theme.of(context).textTheme.headline1,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Program();
            },
          ),
        )
      ],
    );
  }
}

class Program extends StatelessWidget {
  const Program({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Color(0xff1ebdf8), BlendMode.lighten),
          image: AssetImage('assets/weights.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(15),
      child: DefaultTextStyle.merge(
        style: TextStyle(
            color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ProgramName'),
              Row(
                children: [
                  Text('cals'),
                  SizedBox(width: 15),
                  Icon(
                    Icons.timer,
                    size: 10,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text('time'),
                ],
              )
            ]),
      ),
    );
  }
}
