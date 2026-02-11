/*
*1.For State Management:
*SetState() ,,, Global State ,,,, Signals ,,, Provider ,,,, Bloc(Cubit , bloc)
 
 *2.Bloc (Cubit for small logic , Bloc for large logic)

 *3.Every feature(product , post , auth ,...) has presentation folder => (pages,widgets,bloc) 
 * Bloc folder => my_feature_cubit ex: counter_cubit , auth_cubit  (we use flutter_bloc package)
 * CounterCubit class extends from Cubit<int>
 *  int is the data type of the state
 *  State is the value that will be chang
 *  (emit) like (setState) will change the page with new value
 
 *4. How to use our cubit?
 *Set the page that use cubit in BlocProvider to work as parent of it,, in create=> path your cubit
 *So (BlocProvider) will share your cubit data acrross provider childern

 *in your page set the childern that will use your cubit in BlocBuilder.
 *BlocBuilder<YourCubit,datat type>
 *BlocBuilder will have: 
  *builder: (context, your state that will be changed) {}
  *So rour page will re-render just the part that inside the (builder) property that inside (BlocBuilder) ,, for every blocBuilder
  *You can call methods (increment, decrement) that inside your cubit using the context of the page : context.read<my cubit>().myFunction()
  *it will rerender every blocBuilder

  *5.use another way:
  *create class for every state:IncrementState , DecrementState,...

  *6.Use Bloc and events instead of cubit for large projects(and events)
 */
