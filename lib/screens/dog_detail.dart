import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wiggles/model/dog.dart';
import 'package:flutter_wiggles/widgets/gender_tag.dart';
import 'package:flutter_wiggles/widgets/quick_info_card.dart';

class DogDetail extends StatefulWidget {
  final Dog dog;

  const DogDetail({Key? key, required this.dog}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DogDetailState();
}

class _DogDetailState extends State<DogDetail> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    var titleTextStyle = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(fontWeight: FontWeight.w600);

    var appBarWidget = AppBar(
      title: Text(
        'Detalles',
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: IconButton(
        icon: const Icon(Icons.west_rounded),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [
        IconButton(
          icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border_rounded),
          onPressed: () {
            setState(() => {_isFavorite = !_isFavorite});
          },
        ),
      ],
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );

    var dogImage = Image.asset(
      widget.dog.image,
      width: MediaQuery.of(context).size.width,
      height: 346,
      fit: BoxFit.cover,
    );

    var dogInfo = Padding(
      padding: const EdgeInsets.fromLTRB(24, 36, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.dog.name,
                  style: Theme.of(context).textTheme.headline5),
              GenderTag(dogGender: widget.dog.gender)
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.red,
                size: 16,
              ),
              const SizedBox(width: 5),
              Text(
                widget.dog.location,
                style: Theme.of(context).textTheme.bodyText2,
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '${widget.dog.elapsedTime} min atras',
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );

    var myStory = Padding(
        padding: const EdgeInsets.fromLTRB(24, 36, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mi historia',
              style: titleTextStyle,
            ),
            const SizedBox(height: 16),
            Text(
              widget.dog.about,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ));

    var quickInfo = Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Informaci??n', style: titleTextStyle),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuickInfoCard(title: 'Edad', value: '${widget.dog.age} a??os'),
                const Spacer(),
                QuickInfoCard(title: 'Color', value: widget.dog.color),
                const Spacer(),
                QuickInfoCard(
                    title: 'Peso', value: '${widget.dog.weight} Kg'),
              ],
            ),
          ],
        ));

    var ownerInfo = Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informaci??n del albergue',
            style: titleTextStyle,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  widget.dog.owner.image,
                  /* todo change to owner image */
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dog.owner.name,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(widget.dog.owner.bio,
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
              const Spacer(),
              FloatingActionButton(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                mini: true,
                onPressed: () {
                  /*  TODO()  */
                },
                child: const Icon(
                  CupertinoIcons.bolt_horizontal_circle_fill,
                  size: 20,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );

    var adoptMeBtn = Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size((MediaQuery.of(context).size.width - 48), 50),
            primary: Theme.of(context).colorScheme.secondary),
        onPressed: () {
          /* TODO() */
        },
        child: const Text('Adoptame', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: appBarWidget,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              dogImage,
              dogInfo,
              myStory,
              quickInfo,
              ownerInfo,
              adoptMeBtn,
            ],
          ),
        ),
      ),
    );
  }
}
