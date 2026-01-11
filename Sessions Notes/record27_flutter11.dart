/*
*1.

*Use camera package
*Add permission in AndroinMainfest before application tag.
*/

/*
*2.GeoLocator
*2.1 Check Location Permission
*2.2 GetCurrentPosition (current location) : return latitude , longitude(خطوط الطول والعرض)
 *2.3 Listen to Location Update : GeoLoctor.GetPositionStream
 *2.4 See Location in your emulator
 
 */

/*
 *Note: After install new package, run the app first 
 *Run in emulator, see debug console , see flutter fix
 *Gradle is a tool for convert your develop code to release code
 *
 */
/*
*4.CheckNetwork:
*connectivity_plus package
 */

/*
*5.Provider Package:
*Store Data to use it in childern widgets (make data shared)

*5.1 ChangeNotifierProvider Widget(before material app): work as parent to save data for childern
*5.2 create class to manage the state , use notifyListener so you can see the changes
*5.3 Use Consumer(instead of setState()) , 
* will re-render it's childern widgets , take parameter of your model to use it
*(or) use Provider.of<yourModel>().yourFunction();

*****
*Problem: Consumer builder function will re-excute when you change any data for the model, will run other methods , no change in logic but problem in performance
*Sol: Use Selector to just re-excute specific part
*/
