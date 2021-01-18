import 'package:flutter/material.dart';
import 'package:images_unsplash_redux/src/containers/images_container.dart';
import 'package:images_unsplash_redux/src/models/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImagesContainer(
      builder: (BuildContext context, List<Images> images) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Unsplash Clone Api'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 0.5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        FittedBox(
                          fit: BoxFit.fill,
                          child: FlatButton(
                            onPressed: () => showDialog<String>(
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Column(
                                    children: <Widget>[
                                      Image.network(
                                          images[index].urls.regular),
                                      if (images[index].altDescription != null)
                                        Text(images[index].altDescription),
                                      Text('Likes:${images[index].likes}'),
                                      Text(images[index].user.name),
                                    ],
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: const Text(
                                        'cancel',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              },
                              context: context,
                            ),
                            child: Image.network(images[index].urls.regular),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
