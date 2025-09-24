/* 
1. Clean Architucture like MVVM 
Need Product,User,Post Feuture

Domain: Any update or add new function add them to it (Bridge between presentation and data layer)
Interfaces,abstract classes like moderator

Presentation: Interact with user (input,output)  like waiter in resturant

Data Layer: Implement the classes in Domain like cooker in resturant


****
Presentation interact with use cases(add user,get user,...) that i repository
*/

/*
2. analysis optionts.yaml:

rules that you can add them to it .
ex:force developer to use camelCase
 */

/*
3. pubspec.yaml (package manager) like package.json in angular

 tab means that this is child for pervious line
3.1 dependencies:
your packages (in development and in test and in production)

3.2 dev_dependencies: 
packages in just developer or test mode(like test package)

 */
/*
4. pubspec.lock
your packages and their dependencies packages that they need

علشان لو حبيت بعد 10 سنين استخدم البروجكت تانى او حد ينزله يستخدم ال
old packages 
*/

/*
5.
https://pub.dev/
official website for  dart packages

*install pubspec assist extension in vs code , then click ctr+shift+p write pubspec and then add your package
 */

/*
6.
 *dartz package:
 like result that should be failur or success
ex: Either datatype => Either<Failur,List<Product> getProducts()


 *Equatable packege to ovveride = between objects

 *get_it packege : use dependency injection
 ex: you want to use class A , but A needs B , B needs C 
 so we use singleton to create one object and use it in anywhere

 *path : to write paths

 */
/*
7. lib/error folder:

*create exceptions file that has types of exceptions.

*failures file : every exception has failure to return it from cache

*messages file : has mixin that will be added to any class ,, 
this mixin has method to detect the error and return message
*/

/*
8.Structure
Create your cases folders:
*(products,users,posts,...)
in each one create: 
*8.1.Domain Layer
*entities folder
create product entity.
*repositories folder
create repository that has methods(getAllProducts,AddProduct,...) 
*use cases folder
create use case for every method (get_all_product.dart ) 
    ex: class GetAllProduct{
            Either<Failur,List<Product> call()
    }
    in main(){
    GetAllProduct gp = GetAllProduct();
    gp();// use object like function because of call method in the class
    }
 */

/*
*8.2 Create Data Layer
 *API:Application Programming Interface(Interface between server and front end)
 *using default format (json) => '{"id":5,"name":"ahmed","users":[]}'
 *jsonDecode(jsonObject) =>return Map(Object)
 *jsonEncode(productObject) => return string (try .runtimeType will return string)

*8.2.1 Create models folder:
 *ProductModel.dart that extends Product Model , and has some jobs to interact with data
  *copyWith method: create an instance from instance => use it in update,create product
    id : id ?? this.id means id = newId or oldId
  *fromJson:(factory method that accept map and return object using default constructor)
     get input in different ways(named constructor)
  *toJson:
    return map that will used in jsonEncode

    *use Json Vue extention to view json
    *fakes apis: https://fakestoreapi.com/products


*8.2.2 Create datasources folder 
    create product_remote_datasource.dart  to get data from databse
    create abstract class for your methods first to see them in general and implement it 

*8.2.3 Create repositories folder
     implement repository in domain layer , and use productDataSource(abstract class)
     return Right if success: return product model that was child from product
     or Left if failur
 */

/*
8.3 Create Presentation Layer:

*8.3.1 Create properties from use cases (objects from use cases)
var result = getAllProducts() => getAllProducts is object from use case that called GetAllProducts that has call method


result.fold(fun1 , fun2);
fun1: will used if left result from getAllProducts will returned => (Failure)
fun2: will used if right result from getAllProducts will returned =>(List<Product)


*8.3.2 Create menu service

*Service Folder to use Repository
*Console folder to display menu on console
exit (0) to exit from the app

break to exit from nested loop.
or used named loop 
subLoop While(true){
case:5
break subLoop;
}
 */

/*

9. Start in main.dart
with console folder in presentation layer

problem:
we need product service => that needs GetAllProductUseCase => that needs ProductRepositoryImpl => that needs RemoteDataSources =>....

Sol: Use Dependency Injection
use singletoon to define one object for these parameters in one container(box) and use the objects from it

how?
use get_it package
 */
/*
10.
*injection_container.dart

void init(){
register(define) object for all your services that you will need
*Note : arrange them
so we will start from RemoteDataSources , then ProductRepositoryImpl ,  GetAllProductUseCase , ...

var sl = GetIt.instance

sl.registerFactory =>generate new instance every time from class
(or) sl.registerSingletoon=> generate one object and use it any time (object will created when app is runned)
(or) sl.registerLeazySingletoon ,  generate one object and use it any time (object will created when you called it first time)

ex:
sl.registerLeazySingletoon<ProductRepository>(
()=>ProductRepositoryImpl(remoteDataSource: sl()),
);

*registerLeazySingletoon<ProductRepository>: use generics
*()=> returned object or data
* remoteDataSource: sl() :  search in container (sl) about any object of RemoteDataSource
}
 */
import 'dart:convert';

void main() {
  String productData = '{"id":5,"name":"ahmed","users":[]}';

  //receive data from server
  Map<String, dynamic> product = jsonDecode(
    productData,
  ); //return map with key string , value is dynamic because I don't know it
  //*fromJson: in your productModel you need to convert map to your object (product)
  //there are websites  to convert json to model ex: https://javiercbk.github.io/json_to_dart/

  print(product);
  print(jsonEncode(product)); //return json
}
