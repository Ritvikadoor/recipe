import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      height: 250,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(
                    children: const [
                      Icon(Icons.square_outlined),
                      Padding(
                        padding: EdgeInsets.all(7.0),
                        child: Icon(
                          Icons.circle,
                          size: 11,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "Text",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("SAR 58.39"),
                        Row(
                          children: [
                            const Text("15 Calories"),
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.network(
                                "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 60),
                      height: 120,
                      width: 200,
                      child: const Text(
                          "The canonical fines herbes of French haute cuisine comprise finely chopped parsley, chives, tarragon, and chervil. These are employed in seasoning delicate dishes, such as chicken, fish, an"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "0",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ))
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
