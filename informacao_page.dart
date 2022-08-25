import 'package:flutter/material.dart';

class InformacaoPage extends StatefulWidget {
  const InformacaoPage({Key? key}) : super(key: key);

  @override
  State<InformacaoPage> createState() => _InformacaoPageState();
}

class _InformacaoPageState extends State<InformacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: buildBody(),
    );
  }

  buildBody() {
    return Container(
      child: Column(
        children: [
          buildCardCafeHeader(),
          buildLineCardLocalizacao(),
        ],
      ),
    );
  }

  buildCardCafeHeader() {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
        image: DecorationImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Cup-o-cofee-no-spoon.svg/2560px-Cup-o-cofee-no-spoon.svg.png'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
      ),
      padding: EdgeInsets.all(150),
    );
  }

  buildLineCardLocalizacao() {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            padding: EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 2,
              right: 2,
            ),
          ),
          const Icon(
            Icons.pin_drop,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'COFFEE HOUSE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                'R. São José, 95',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Aberto .',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    ' Fecha às 20:00',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
