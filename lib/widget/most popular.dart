import 'package:flutter/material.dart';
import 'package:freelancer/models/travel.dart';

class MostPopular extends StatelessWidget {
  final _list = Travel.mostPopular();
  final _pgctrl = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _pgctrl,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(travel.url,
                  fit: BoxFit.cover,
                  width: 150,
                ),
              ),
            ),
            Positioned(
              bottom: 20,left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                  Text(
                    travel.location,
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                ],
              ),
            ),

          ],
        );
      },
      separatorBuilder: (_,index)=>SizedBox(width: 10),
      itemCount: _list.length,
    );
  }
}