import 'package:flutter_guide_whitelabel/app/modules/guide/presentation/models/item_model.dart';

import '../models/guide_model.dart';

final List<GuideModel> guidesList = [
  GuideModel(
    title: 'Flutter: Do Mobile a Web',
    titleImage: 'https://miro.medium.com/max/700/1*B2XWNrnU2xAONmKwW93CEA.png',
    route: 'page1',
    content: [
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content:
            'Flutter é um SDK (Software Development Kit) de código aberto criado pelo Google para o desenvolvimento de aplicações nativas para mobile, web, desktop e dispositivos embutidos. Além disso, é o principal método de criação de aplicativos para o Google Fuchsia, a nova aposta do Google em sistemas operacionais. Tudo isso com apenas uma base de código.',
      ),
      ItemModel(
        id: '0xxx0',
        type: ContentType.image,
        content: 'https://miro.medium.com/max/600/1*UQG-qkixwnQvhC_3USq8hA.gif',
      ),
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content:
            'Aliquip cupidatat magna laboris commodo in ut labore reprehenderit irure.',
      ),
    ],
  ),
  GuideModel(
    title: 'Title 2',
    route: 'page2',
    content: [
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content: 'Cupidatat esse labore reprehenderit sit duis laborum.',
      ),
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content: 'Amet commodo consectetur ut consectetur ipsum fugiat.',
      ),
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content:
            'Aute sint anim velit adipisicing adipisicing occaecat fugiat consectetur aute tempor ipsum nostrud labore et.',
      ),
    ],
  ),
  GuideModel(
    title:
        'Ea sint laboris cillum est labore anim duis in minim excepteur laborum reprehenderit. Dolor sit dolore cillum ut nostrud deserunt et nisi id minim ut. Non eiusmod culpa incididunt ullamco commodo enim non duis velit anim. Magna et nostrud consectetur nulla reprehenderit in ex commodo officia. Cupidatat proident non ullamco id est elit tempor ad est culpa voluptate adipisicing eiusmod nulla.',
    route: 'page3',
    content: [
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content:
            'Consectetur exercitation in enim excepteur culpa ad aute quis exercitation ut consectetur fugiat minim ad. Veniam nulla incididunt fugiat incididunt ut ad veniam. Duis amet duis eiusmod sint duis est deserunt.',
      ),
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content:
            'Veniam sint exercitation cupidatat esse duis consequat aliquip qui. Veniam anim laborum ad adipisicing nulla ad nulla. Non aliquip mollit qui mollit aute incididunt nostrud et officia sunt velit.',
      ),
      ItemModel(
        id: '0xxx0',
        type: ContentType.text,
        content:
            'Eiusmod qui duis voluptate ad id mollit non anim dolor. Sunt eu officia excepteur mollit adipisicing sunt ea ut. Lorem non enim ut exercitation sit velit. Aliquip eu aliqua nisi consequat culpa ullamco ex exercitation exercitation do.',
      ),
    ],
  ),
];
