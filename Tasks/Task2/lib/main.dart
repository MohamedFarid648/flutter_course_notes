import 'dart:io';

void main() {
  /*  How To solve the task?  */
  /*
Divide your page to small pages
 */

  Map<String, dynamic> page = {
    "header": {
      "top": {
        "title": "Company Title",
        "rightNav": ["Home", "About", "Contact"],
      },
      "body": {"title": "Company Name", "description": "Company Description"},
    },
    "body_services": {
      "title": 'Services',
      "body": [
        {
          "icon": "assets/icon1.png",
          "title": "service 1",
          "description": "service one description",
        },
        {
          "icon": "assets/icon2.png",
          "title": "service 2",
          "description": "service two description",
        },
        {
          "icon": "assets/icon3.png",
          "title": "service 3",
          "description": "service three description",
        },
      ],
    },
    "body_mission": {
      "title": 'Our Mission',
      "body": {
        "left_side": [
          {"title": "mission 1", "description": "mission one description"},
          {"title": "mission 2", "description": "mission two description"},
          {"title": "mission 3", "description": "mission three description"},
          {"title": "mission 4", "description": "mission four description"},
        ],
        "right_side": "assest/image.png",
      },
    },
  };

  //Ex:
  print(page["body_services"]["body"][0]);
}
