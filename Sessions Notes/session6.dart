void main() {
  String x = "123 mohamed";
  RegExp regExp = RegExp(
    r'\d',
  ); //if you remove (r) compiler doesn't understand / so you will add \\d to print(\d)
  //so we add r'our reg expression'
  print(regExp);
  print(
    regExp.hasMatch(x), //true
  ); //it will search in reg expression if it has any digit or not

  //2
  var y = "welcome Mohamed";
  RegExp regExp2 = RegExp(r'mohamed', caseSensitive: true);
  print(regExp2.hasMatch(y)); //print false

  //3
  /*
  3.1 `.` for all or any (any digit,any char,any ....)
   Matches any single character (except newline characters by default, unless `dotAll` is enabled).

  Example: `a.b` matches "acb", "a#b", "a3b", etc.

  3.2 \. (will search about . as char)
  3.3 (\.com | \.net) grouping = search about .com or .net

  3.4 [] for range => [a-zA-Z0-9] search about any char capital or small , search about any digget

  ex:
  r('[a-zA-Z0-9](\+|\-)[0-5]) will match any letter or diget,+ or - , digit from 0-5 ex: r-5 , r+4  

  3.5 [^a-zA-Z0-9] means not any digit or char ex: accept @,/,+,!,#

  3.6  \d = [0-9]   ,,,  \w = [a-zA-Z0-9_]
  3.7 \D = not any digit [^0-9] ,,, \W = [^a-zA-Z0-9_]
  3.8 for space use r' ' or r'\s' ex: [0-9 ] or [0-9\s] ,,, \S not space(any thing not space)

  3.9  [0-9]{n,m} = anu number of digit start from n to m ex: [0-9]{3,5} will match 123 ,1234, 12345  not 12 .

  3.10 {n,} min is n and any max ex:{3,} will accept 123,1234,.... not 12

  3.11 `{n}`:** Matches exactly `n` times. 


  3.12 + means one or more = {1,}  ,,, * means zero or more ={0,} ,,, ? = {0,1}

  ex:
   Example: `ab+c` matches "abc", "abbc", "abbbc", etc., but not "ac".
   Example: `ab*c` matches "ac", "abc", "abbc", "abbbc", etc.
  Example: `colou?r` matches "color" and "colour".

   */

  //4 example
  var ph = "011112858168"; // will be true in regExp3
  var ph2 = "011112858168dsfcgvhbjkl;"; // will be true in regExp3
  var ph3 = "011112858168dsfcgvhbjkl;"; // will be false in regExp4
  RegExp regExp3 = RegExp(
    r'01(0|1|2|5)\d{8}',
  ); //start from 01 then one digit (0 or 1 or 2 or 5) then 8 digits
  print(regExp3.hasMatch(ph3)); //print true

  RegExp regExp4 = RegExp(r'^01(0|1|2|5)\d{8}$');
  /*
  `^01\d{8}' should my pattern start with 01
  `^ mypattern $` will check if all the string is like the pattern  so $ will close for the pattern
  
  
   */

  var ph4 = "01112858168";
  print(regExp4.hasMatch(ph4)); //print true
}
