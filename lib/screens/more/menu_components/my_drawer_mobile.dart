import 'package:church/screens/more/menu_components/menu_components.dart';
import 'package:church/screens/more/menu_components/menu_components_mobile.dart';

import 'package:flutter/material.dart';

class MyDrawerMobile extends StatefulWidget {
  @override
  _MyDrawerMobileState createState() => _MyDrawerMobileState();
}

class _MyDrawerMobileState extends State<MyDrawerMobile> {
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
              MenuComponentsMobile(
                tapMenu: () {},
                iconMenu: Icons.person,
                titleMenu: 'Perfil',
              ),
            ],
          ),
          Divider(),
          ExpansionTile(
            title: MenuComponentsMobile(
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
              MenuComponentsMobile(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Adolescentes',
              ),
              Divider(),
              MenuComponentsMobile(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Jovens',
              ),
              Divider(),
              MenuComponentsMobile(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Mulheres',
              ),
              Divider(),
              MenuComponentsMobile(
                tapMenu: () {},
                iconMenu: Icons.blur_circular_outlined,
                titleMenu: 'G.M Homens',
              ),
            ],
          ),
          Divider(),
          MenuComponentsMobile(
            tapMenu: () {},
            iconMenu: Icons.source,
            titleMenu: 'Grupo Diáconos',
          ),
          Divider(),
          MenuComponentsMobile(
            tapMenu: () {},
            iconMenu: Icons.source,
            titleMenu: 'Grupo Louvor',
          ),
          Divider(),
          MenuComponentsMobile(
            tapMenu: () {},
            iconMenu: Icons.monetization_on,
            titleMenu: 'Missões',
          ),
          Divider(),
          MenuComponentsMobile(
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
