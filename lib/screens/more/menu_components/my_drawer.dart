import 'package:church/screens/more/menu_components/menu_components.dart';

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              MenuComponents(
                tapMenu: () {},
                iconMenu: Icons.person,
                titleMenu: 'Perfil',
              ),
            ],
          ),
          Divider(),
          ExpansionTile(
            title: MenuComponents(
              tapMenu: () {},
              iconMenu: Icons.group,
              titleMenu: 'Grupos Missionários',
            ),
            children: [
              MenuComponents(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Criança',
              ),
              Divider(),
              MenuComponents(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Adolescentes',
              ),
              Divider(),
              MenuComponents(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Jovens',
              ),
              Divider(),
              MenuComponents(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Mulheres',
              ),
              Divider(),
              MenuComponents(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Homens',
              ),
            ],
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.source,
            titleMenu: 'Grupo Diáconos',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.source,
            titleMenu: 'Grupo Louvor',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.monetization_on,
            titleMenu: 'Missões',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.person_pin,
            titleMenu: 'Promoções',
          ),
          Divider(),
          Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                width: MediaQuery.of(context).size.width * .6,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff19232F),
                ),
                child: Center(
                  child: Text(
                    'Sair',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
