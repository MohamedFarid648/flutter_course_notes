/*Your floder should have name (lib)
And Your file should have name main.dart , so when you click f5 the vs code will understand that you want to run this project

If you called your file another name like main1.dart , it will open launch.json file
so you can add this line :
"program": "Tasks/Task1/lib/main1.dart"
To make it understand how can it run your program

*/

//img url: https://cdn.dribbble.com/userupload/27699099/file/original-0bea0845406d1a860f329c3f34d70ab0.png?resize=1600x1200&vertical=center
void main() {
  /*

List of packeges
Ech one has a map
each map has :
desc: map of icon,title,... .
location: list of maps(url,details)
isDelivered: boolean
BtnTitle: String
     
 */
  var packages = [
    {
      "desc": {
        "icon": "icon url",
        "title": "Books and Stationary",
        "date": "14/6/2020 03:45 am",
        "price": "34",
      },
      "location": [
        {
          "Location Url": "https://maps.google.com/",
          "Location Details": "469 Woodrige Town, Winwer street",
        },
        {
          "Location Url": "https://maps.google.com/",
          "Location Details": "345 RedEnclave",
        },
      ],
      "isDelivered": "true",
      "BtnTitle": "Repeat",
    },

    {
      "desc": {
        "icon": "icon url",
        "title": "Food and Eatables",
        "date": "11/6/2020 01:45 pm",
        "price": "43",
      },
      "location": [
        {
          "Location Url": "https://maps.google.com/",
          "Location Details": "2686 GlenWood Avenue",
        },
        {
          "Location Url": "https://maps.google.com/",
          "Location Details": "3015 Wright Edward Street",
        },
      ],
      "isDelivered": "true",
      "BtnTitle": "Repeat",
    },
  ];

  //print(packages[0]["desc"]["title"]);//error
  /*The method '[]' can't be unconditionally invoked because the receiver can be 'null'.
Try making the call conditional (using '?.') or adding a null check to the target */
  print(packages[0]["desc"]);
}
