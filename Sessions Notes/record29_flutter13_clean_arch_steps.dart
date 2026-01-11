/*
*1.Create DI file and write in it (part of config.dart)  ,,, and in config.dart write ((part di.dart))

*Steps:
*ex:UseCase: getit.registerLazySingleToon(){return RegisterUserCase(getit())} ,, that take repository object
*ex:Repository: getit.registerLazySingleToon(){return RegisterRepository(getit())} ,, that take remote data source

*ex:Remote Data Source: getit.registerLazySingleToon(){return AuthRemoteDataSource(getit())} ,, that use Dio Client

*ex: getit.registerLazySingleToon() => (){DioClient()}
 */

/*
*2. inject it in the injection file

*3. in OnPressed Register button:
*var x = getit<RegisterUseCase>();

*x(RegisterEntity(name:,pass:,...)) // because RegisteruseCase take  Register Entity

 */
/*
*3.form field validator package

*create your validator rules class in utils folder(folder has your custom classes)
 */
/*
*4. project-tree extention
 */
/*
*5.Steps to create page (ex: login page):

*create login page(widget) in presentation.
*add it in routes
*add login_entity (request entity), login_response_entity (that will come from server in domain/entities folder

*in domain/repositories folder in auth_repository add login method(abstract)
*in domain/usecases folder add login_usecase

*in data/models folder add login_model(that has fromJson,toJson)
*in data/sources folder add auth_source that has login_user method that use dio client
*in data/implements folder ,add auth_repoositorimp that implement auth_repoository
 */

/*
*6.Save access token in shared preferences
 */

/*
*7.Firebase: read firebase docs
*use FireStore Database
*use authentication


*use google cloud console

 */
